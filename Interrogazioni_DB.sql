/*1) Elenco di tutti gli utenti*/
SELECT 	Nome, Cognome, DataDiNascita, Indirizzo, NumeroCivico, CAP, Stato
FROM 	Utente;

/*2) Elenco degli utenti di sesso maschile*/
SELECT 	Nome, Cognome, DataDiNascita, Indirizzo, NumeroCivico, CAP, Stato
FROM 	Utente
WHERE 	Sesso = 'M';

/*3) Elenco di tutti i prodotti*/
SELECT 	NomeProdotto, DataInizio, DataFine, Citta, Prezzo
FROM 	Prodotto;

/*4) Elenco dei prodotti ancora disponibili all'acquisto*/
SELECT 		NomeProdotto, DataInizio, DataFine, Citta, Prezzo, (DateDiff(DataFine, CURRENT_DATE())) AS TempoRimasto
FROM 		Prodotto
GROUP BY 	TempoRimasto
HAVING 		TempoRimasto > 0;


/*5) Elenco dei prodotti che scadono nella 3 settimana del mese*/
SELECT		NomeProdotto, WEEK(DataFine,5)-WEEK(DATE_SUB(DataFine, INTERVAL DAYOFMONTH(DataFine)-1 DAY),5)+1 AS SettimanaDelMese
FROM		Prodotto
GROUP BY	Prodotto.NomeProdotto
HAVING		SettimanaDelMese = 3;

/*6) Elenco dei prodotti che saranno disponibili all'acquisto dalla prossima settimana*/
SELECT		NomeProdotto, DataInizio
FROM		Prodotto
WHERE		WEEK(DataInizio,1) > WEEK(Now(),1)
GROUP BY 	Prodotto.NomeProdotto;

/*7) Media dei prezzi di tutti i prodotti suddivisi per categoria*/
SELECT		Categoria.NomeCategoria, AVG(Prodotto.Prezzo) AS MediaPrezzi
FROM 		Prodotto, Categoria
WHERE		Prodotto.IdCategoria = Categoria.IdCategoria
GROUP BY	Categoria.IdCategoria;

/*8) Numero totale degli acuisti fatti per ogni tipo di prodotto*/
SELECT		Prodotto.NomeProdotto, COUNT(*) AS NumeroTotaleAcquistati
FROM		Prodotto, Ordine
WHERE		Ordine.IdProdotto = Prodotto.IdProdotto
GROUP BY	Prodotto.IdProdotto;

/*9) Numero totale degli acquisti fatti per categoria*/
SELECT		Categoria.NomeCategoria, COUNT(*) AS NumeroTotaleAcquistati
FROM		Prodotto, Ordine, Categoria
WHERE		Ordine.IdProdotto = Prodotto.IdProdotto AND
			Prodotto.IdCategoria = Categoria.IdCategoria
GROUP BY	Categoria.Idcategoria;

/*10) Elenco degli ordini con tipo di Spedizione: 'Espressa 1-2 GG'*/
SELECT 		Ordine.NumeroOrdine, Spedizione.TipoSpedizione
FROM 		Ordine, Spedizione
WHERE 		Ordine.IdSpedizione = Spedizione.IdSpedizione AND
			Spedizione.TipoSpedizione = 'Espressa 1-2 GG'
GROUP BY	Ordine.NumeroOrdine;

/*11) Elenco degli ordini della Categoria: 'Automobili' con Pagamento: 'Contrassegno'*/
SELECT 		Ordine.NumeroOrdine, Categoria.NomeCategoria, Prodotto.NomeProdotto, Pagamento.TipoPagamento
FROM 		Ordine, Pagamento, Prodotto, Categoria
WHERE 		Ordine.IdProdotto = Prodotto.IdProdotto AND
			Ordine.IdPagamento = Pagamento.IdPagamento AND
			Prodotto.IdCategoria = Categoria.IdCategoria AND
			Pagamento.TipoPagamento = 'Contrassegno' AND
			Categoria.NomeCategoria = 'Automobili'
GROUP BY 	Categoria.NomeCategoria;

/*12) Numero totale di ordini effettuati dallo stesso utente*/
SELECT 		Utente.Nome, Utente.Cognome, COUNT(*) AS TotaleOrdini
FROM		Ordine, Utente
WHERE		Ordine.IdUtente = Utente.IdUtente
GROUP BY 	Ordine.IdUtente;

/*13) Visualizzare il totale dell'ordine*/
SELECT 		Ordine.NumeroOrdine, Utente.Nome, Utente.Cognome, Prodotto.NomeProdotto, Prodotto.Prezzo, Ordine.Quantita, Ordine.Totale
FROM		Utente, Prodotto, Ordine
WHERE		Ordine.IdUtente = Utente.IdUtente AND
			Ordine.IdProdotto = Prodotto.IdProdotto
GROUP BY 	Ordine.NumeroOrdine;

/*14) Ordini con totale da pagare maggiore di 180 €*/
SELECT 		Ordine.NumeroOrdine, Utente.Nome, Utente.Cognome, Prodotto.NomeProdotto, Prodotto.Prezzo, Ordine.Quantita, Ordine.Totale
FROM		Utente, Prodotto, Ordine
WHERE		Ordine.IdUtente = Utente.IdUtente AND
			Ordine.IdProdotto = Prodotto.IdProdotto
GROUP BY 	Ordine.Totale
HAVING		Ordine.Totale > 180;

/*15) Ordini effettuati tra il 18/05/2013 e il 26/05/2013*/
SELECT 		Ordine.NumeroOrdine, Utente.Nome, Utente.Cognome
FROM		Ordine, Utente
WHERE		Ordine.IdUtente = Utente.IdUtente AND
			Ordine.DataOrdine BETWEEN '2013/05/18' AND '2013/05/26'
GROUP BY 	Ordine.NumeroOrdine;

/*16) Utente che ha speso più di tutti*/
SELECT 		Ordine.NumeroOrdine, Utente.Nome, Utente.Cognome, Prodotto.NomeProdotto, Prodotto.Prezzo, Ordine.Quantita, Ordine.Totale 
FROM		Ordine, Utente, Prodotto
WHERE		Ordine.IdUtente = Utente.IdUtente AND
			Ordine.IdProdotto = Prodotto.IdProdotto
GROUP BY 	Ordine.NumeroOrdine
HAVING		Totale >= ALL 	(
			SELECT 		Max(Ordine.Totale)
			FROM 	Ordine, Prodotto
			WHERE	Ordine.IdProdotto = Prodotto.IdProdotto
							);

/*17) Elenco degli ordini effettuati da donne, della categoria 'Accessori' che hanno pagato con 'Bonifico C/C'*/
SELECT		Utente.Nome, Utente.Cognome, Categoria.NomeCategoria, Prodotto.NomeProdotto, Ordine.Quantita, Pagamento.TipoPagamento
FROM		Utente, Prodotto, Pagamento, Ordine, Categoria
WHERE		Utente.Sesso = 'F' AND
			Categoria.NomeCategoria = 'Accessori' AND
			Pagamento.TipoPagamento = 'Bonifico C/C' AND
			Ordine.IdProdotto = Prodotto.IdProdotto AND
			Ordine.IdPagamento = Pagamento.IdPagamento AND
			Ordine.IdUtente = Utente.IdUtente AND
			Prodotto.IdCategoria = Categoria.IdCategoria
GROUP BY 	Categoria.NomeCategoria;

/*18) Totale degli ordini e media dei totali degli ordini, suddivisi per sesso*/
SELECT		Utente.Sesso, COUNT(*) AS TotaleOrdini, AVG(Ordine.Totale) AS MediaDeiTotali
FROM		Utente, Prodotto, Ordine
WHERE		Ordine.IdUtente = Utente.IdUtente AND
			Ordine.IdProdotto = Prodotto.IdProdotto
GROUP BY	Utente.Sesso;

/*19) Tempo trascorso da quando il prodotto è stato reso disponibile all'acquisto a quando è stato acquistato*/
SELECT		Prodotto.NomeProdotto, (DateDiff(Ordine.DataOrdine, Prodotto.DataInizio)) AS GiorniTrascorsiAcquisto
FROM		Prodotto, Ordine
WHERE		Ordine.IdProdotto = Prodotto.IdProdotto
GROUP BY 	Prodotto.NomeProdotto;

/*20) Media dei tempi di attesa tra l'avvenuto acquisto del prodotto e la data di spedizione, suddivisi per tipo di spedizione*/
SELECT		Spedizione.TipoSpedizione, AVG(DateDiff(Ordine.DataSpedizione, Ordine.DataOrdine)) AS GiorniTrascorsiSpedizione
FROM		Ordine, Spedizione
WHERE		Ordine.IdSpedizione = Spedizione.IdSpedizione
GROUP BY 	Spedizione.TipoSpedizione;

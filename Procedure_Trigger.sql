/*////     PROCEDURE     ////*/
/*1) Ricerca di un utente fornendo il Cognome, visualizzare il Nome e il Sesso*/
CREATE PROCEDURE ricercaCognome (IN cognome VARCHAR(45))
SELECT 	Utente.Nome, Utente.Cognome, Utente.Sesso, Utente.DataDiNascita
FROM 	Utente
WHERE 	Utente.Cognome = cognome;

CALL	ricercaCognome('Rossi');

/*2) Ricerca degli ordini effettuati da un certo sesso, di una certa categoria, con un certo tipo di pagamento*/
CREATE PROCEDURE ricercaOrdine(IN sesso ENUM('M','F'), IN categoria VARCHAR(25), IN pagamento VARCHAR(20))
SELECT		Utente.Nome, Utente.Cognome, Categoria.NomeCategoria, Prodotto.NomeProdotto, Ordine.Quantita, Pagamento.TipoPagamento
FROM		Utente, Prodotto, Pagamento, Ordine, Categoria
WHERE		Utente.Sesso = sesso AND
			Categoria.NomeCategoria = categoria AND
			Pagamento.TipoPagamento = pagamento AND
			Ordine.IdProdotto = Prodotto.IdProdotto AND
			Ordine.IdPagamento = Pagamento.IdPagamento AND
			Ordine.IdUtente = Utente.IdUtente AND
			Prodotto.IdCategoria = Categoria.IdCategoria
GROUP BY 	Categoria.NomeCategoria;

CALL	ricercaOrdine('F', 'Accessori', 'Bonifico C/C');

/*3) Ricerca degli ordini effettuati in un certo intervallo di date*/
CREATE PROCEDURE ricercaDate(IN data1 DATE, IN data2 DATE)
SELECT 		Ordine.NumeroOrdine, Utente.Nome, Utente.Cognome
FROM		Ordine, Utente
WHERE		Ordine.IdUtente = Utente.IdUtente AND
			Ordine.DataOrdine BETWEEN data1 AND data2
GROUP BY 	Ordine.NumeroOrdine;

CALL	ricercaDate('2013/05/18', '2013/05/26');
/*////////////////////////////*/


/*////     TRIGGER     ////*/
/*1) Controllare se il campo Prezzo della tabella Prodotto, prima dell’inserimento, sia maggiore di 0*/
DELIMITER //
CREATE TRIGGER controlla_prezzo BEFORE INSERT ON Prodotto
FOR EACH ROW
BEGIN
        IF NEW.Prezzo < 0 THEN
                SET NEW.Prezzo = 0;
        END IF;
END;//
DELIMITER ;

/*2) Calcolare in automatico il totale e la data dell'ordine e inserirlo nel campo corrispondente*/
DELIMITER //
CREATE TRIGGER calcolo_totale BEFORE INSERT ON Ordine
FOR EACH ROW
BEGIN
		SET NEW.Totale = NEW.Quantita*(SELECT Prezzo FROM Prodotto WHERE IdProdotto = NEW.IdProdotto);
		SET NEW.DataOrdine = CURDATE();
END;//
DELIMITER ;
/*/////////////////////////*/
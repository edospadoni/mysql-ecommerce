/*Inserimento valori tabella SPEDIZIONE*/
INSERT INTO `AcquistoIstantaneo`.`Spedizione` (`TipoSpedizione`, `NomeCorriere`) VALUES ('Espressa 1-2 GG', 		'Bartolini');
INSERT INTO `AcquistoIstantaneo`.`Spedizione` (`TipoSpedizione`, `NomeCorriere`) VALUES ('Standard 5-6 GG', 		'SDA');
INSERT INTO `AcquistoIstantaneo`.`Spedizione` (`TipoSpedizione`, `NomeCorriere`) VALUES ('Isole Espressa 3-4 GG', 	'GLS');
INSERT INTO `AcquistoIstantaneo`.`Spedizione` (`TipoSpedizione`, `NomeCorriere`) VALUES ('Isole Standard 7-8 GG', 	'GLS');
INSERT INTO `AcquistoIstantaneo`.`Spedizione` (`TipoSpedizione`, `NomeCorriere`) VALUES ('Internazionale 13-15 GG','UPS');

/*Inserimento valori tabella PAGAMENTO*/
INSERT INTO `AcquistoIstantaneo`.`Pagamento` (`TipoPagamento`) VALUES ('Bonifico C/C');
INSERT INTO `AcquistoIstantaneo`.`Pagamento` (`TipoPagamento`) VALUES ('Carta di Credito');
INSERT INTO `AcquistoIstantaneo`.`Pagamento` (`TipoPagamento`) VALUES ('Contrassegno');

/*Inserimento valori tabella CATEGORIA*/
INSERT INTO `AcquistoIstantaneo`.`Categoria` (`NomeCategoria`) VALUES ('Accessori');
INSERT INTO `AcquistoIstantaneo`.`Categoria` (`NomeCategoria`) VALUES ('Automobili');
INSERT INTO `AcquistoIstantaneo`.`Categoria` (`NomeCategoria`) VALUES ('Casa e Giardino');
INSERT INTO `AcquistoIstantaneo`.`Categoria` (`NomeCategoria`) VALUES ('Elettronica');
INSERT INTO `AcquistoIstantaneo`.`Categoria` (`NomeCategoria`) VALUES ('Sport');

/*Inserimento valori tabella UTENTE*/
INSERT INTO `AcquistoIstantaneo`.`Utente` (`Nome`, `Cognome`, `Sesso`, `DataDiNascita`, `Indirizzo`, `NumeroCivico`, `CAP`, `Citta`, `Stato`, `Email`, `Password`) VALUES ('Mario', 	'Rossi', 	'M', '1974/02/08', 'Via Verdi', 	'15', 	'61122', 	'Pesaro', 		'Italia', 		'mario.rossi@gmail.com', 		'provamario1');
INSERT INTO `AcquistoIstantaneo`.`Utente` (`Nome`, `Cognome`, `Sesso`, `DataDiNascita`, `Indirizzo`, `NumeroCivico`, `CAP`, `Citta`, `Stato`, `Email`, `Password`) VALUES ('Giorgia', 	'Pucci', 	'F', '1992/05/15', 'Via Rossi', 	'145', 	'20121', 	'Milano', 		'Italia', 		'giorgia.pucci@gmail.com', 		'provagiorgia1');
INSERT INTO `AcquistoIstantaneo`.`Utente` (`Nome`, `Cognome`, `Sesso`, `DataDiNascita`, `Indirizzo`, `NumeroCivico`, `CAP`, `Citta`, `Stato`, `Email`, `Password`) VALUES ('Luca', 		'Grossi', 	'M', '1965/12/23', 'Via Gialli', 	'26', 	'92100', 	'Agrigento', 	'Italia', 		'luca.grossi@gmail.com', 		'provaluca1');
INSERT INTO `AcquistoIstantaneo`.`Utente` (`Nome`, `Cognome`, `Sesso`, `DataDiNascita`, `Indirizzo`, `NumeroCivico`, `CAP`, `Citta`, `Stato`, `Email`, `Password`) VALUES ('Valeria', 	'Masi', 	'F', '1983/03/30', 'Via Neri', 		'78', 	'10128', 	'New York', 	'USA', 			'valeria.masi@gmail.com', 		'provavaleria1');
INSERT INTO `AcquistoIstantaneo`.`Utente` (`Nome`, `Cognome`, `Sesso`, `DataDiNascita`, `Indirizzo`, `NumeroCivico`, `CAP`, `Citta`, `Stato`, `Email`, `Password`) VALUES ('Cristina', 	'Roccia', 	'F', '1977/08/04', 'Via Azzurri', 	'245', 	'33018', 	'Tokyo', 		'Giappone', 	'cristina.roccia@gmail.com', 	'provacristina1');
INSERT INTO `AcquistoIstantaneo`.`Utente` (`Nome`, `Cognome`, `Sesso`, `DataDiNascita`, `Indirizzo`, `NumeroCivico`, `CAP`, `Citta`, `Stato`, `Email`, `Password`) VALUES ('Fabrizio', 	'Panni', 	'M', '1989/10/21', 'Via Bianchi', 	'87', 	'00118', 	'Roma', 		'Italia', 		'fabrizio.panni@gmail.com', 	'provafabrizio1');
INSERT INTO `AcquistoIstantaneo`.`Utente` (`Nome`, `Cognome`, `Sesso`, `DataDiNascita`, `Indirizzo`, `NumeroCivico`, `CAP`, `Citta`, `Stato`, `Email`, `Password`) VALUES ('Davide', 	'Turchi', 	'M', '1953/01/12', 'Via Violi', 	'36', 	'2060', 	'Sydney', 		'Australia', 	'davide.turchi@gmail.com', 		'provadavide1');

/*Inserimento valori tabella PARTNER*/
INSERT INTO `AcquistoIstantaneo`.`Partner` (`NomePartner`, `SitoWeb`, `Email`) VALUES ('Breil', 		'www.breil.com', 		'breilshop@gmail.com');
INSERT INTO `AcquistoIstantaneo`.`Partner` (`NomePartner`, `SitoWeb`, `Email`) VALUES ('Swatch', 		'www.swatch.com', 'swatch@gmail.com');
INSERT INTO `AcquistoIstantaneo`.`Partner` (`NomePartner`, `SitoWeb`, `Email`) VALUES ('Goodyear', 		'www.goodyear.com', 	'goodyear@gmail.com');
INSERT INTO `AcquistoIstantaneo`.`Partner` (`NomePartner`, `SitoWeb`, `Email`) VALUES ('Bose', 			'www.bose.com', 		'bose@gmail.com');
INSERT INTO `AcquistoIstantaneo`.`Partner` (`NomePartner`, `SitoWeb`, `Email`) VALUES ('Garden2000', 	'www.garde.com', 		'garden@gmail.com');
INSERT INTO `AcquistoIstantaneo`.`Partner` (`NomePartner`, `SitoWeb`, `Email`) VALUES ('CasaMagica', 	'www.casamagica.com', 	'casamagica@gmail.com');
INSERT INTO `AcquistoIstantaneo`.`Partner` (`NomePartner`, `SitoWeb`, `Email`) VALUES ('Toshiba', 		'www.toshiba.com', 		'toshiba@gmail.com');
INSERT INTO `AcquistoIstantaneo`.`Partner` (`NomePartner`, `SitoWeb`, `Email`) VALUES ('Samsung', 		'www.samsung.com', 		'samsung@gmail.com');
INSERT INTO `AcquistoIstantaneo`.`Partner` (`NomePartner`, `SitoWeb`, `Email`) VALUES ('Nike', 			'www.nike.com', 		'nike@gmail.com');
INSERT INTO `AcquistoIstantaneo`.`Partner` (`NomePartner`, `SitoWeb`, `Email`) VALUES ('Adidas', 		'www.adidas.com', 		'adidas@gmail.com');

/*Inserimento valori tabella PRODOTTO*/
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, 			`Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Collana argento', 			'2013-05-06 00:00:00', '2013-05-08 00:00:00', 			'49.90', 	'1', '1');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, 			`Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Orologio polso', 			'2013-05-01 00:00:00', '2013-05-04 00:00:00', 			'89.90', 	'1', '2');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, 			`Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Bracciale oro', 				'2013-05-15 00:00:00', '2013-05-19 00:00:00', 			'199.90', 	'1', '1');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, 			`Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Pneumatici neve', 			'2013-05-08 00:00:00', '2013-05-11 00:00:00', 			'145.00', 	'2', '3');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, `Citta`,	`Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Impiano stereo mp3', 		'2013-05-20 00:00:00', '2013-05-23 00:00:00', 'Pesaro', '126.50', 	'2', '4');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, 			`Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Barbecue elettrico', 		'2013-05-17 00:00:00', '2013-05-20 00:00:00', 			'214.00', 	'3', '5');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, 			`Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Gazebo plastica', 			'2013-05-26 00:00:00', '2013-05-28 00:00:00', 			'59.90', 	'3', '5');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, `Citta`, `Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Tavolo da cucina legno', 	'2013-05-05 00:00:00', '2013-05-08 00:00:00', 'Roma', 	'34.90', 	'3', '6');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, 			`Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Specchio da bagno', 			'2013-05-12 00:00:00', '2013-05-16 00:00:00', 			'17.90', 	'3', '6');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, 			`Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Tv plasma 40 pollici', 		'2013/05/14 00:00:00', '2013/05/17 00:00:00', 			'249.90',	'4', '8');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, 			`Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Hard disk esterno 500 GB',	'2013/05/24 00:00:00', '2013/05/26 00:00:00', 			'39.90', 	'4', '7');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, `Citta`, `Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Pantaloni basket neri', 		'2013/05/11 00:00:00', '2013/05/15 00:00:00', 'Milano', '17.90', 	'5', '9');
INSERT INTO `AcquistoIstantaneo`.`Prodotto` (`NomeProdotto`, `DataInizio`, `DataFine`, 			`Prezzo`, `IdCategoria`, `IdPartner`) VALUES ('Maglia nera calcio', 		'2013/05/18 00:00:00', '2013/05/22 00:00:00', 			'20.50', 	'5', '10');

/*Inserimento valori tabella ORDINE*/
INSERT INTO `AcquistoIstantaneo`.`Ordine` (`NumeroOrdine`,`Quantita`, `DataSpedizione`, `IdProdotto`, `IdUtente`, `IdPagamento`, `IdSpedizione`) VALUES ('056987', '2', '2013/05/10', '1', 	'3', '3', '3');
INSERT INTO `AcquistoIstantaneo`.`Ordine` (`NumeroOrdine`,`Quantita`, `DataSpedizione`, `IdProdotto`, `IdUtente`, `IdPagamento`, `IdSpedizione`) VALUES ('145698', '4', '2013/05/28', '11', 	'6', '2', '2');
INSERT INTO `AcquistoIstantaneo`.`Ordine` (`NumeroOrdine`,`Quantita`, `DataSpedizione`, `IdProdotto`, `IdUtente`, `IdPagamento`, `IdSpedizione`) VALUES ('036985', '1', '2013/05/19', '10', 	'1', '3', '2');
INSERT INTO `AcquistoIstantaneo`.`Ordine` (`NumeroOrdine`,`Quantita`, `DataSpedizione`, `IdProdotto`, `IdUtente`, `IdPagamento`, `IdSpedizione`) VALUES ('547896', '6', '2013/05/23', '5', 	'2', '3', '5');
INSERT INTO `AcquistoIstantaneo`.`Ordine` (`NumeroOrdine`,`Quantita`, `DataSpedizione`, `IdProdotto`, `IdUtente`, `IdPagamento`, `IdSpedizione`) VALUES ('452031', '5', '2013/05/18', '9', 	'7', '3', '4');
INSERT INTO `AcquistoIstantaneo`.`Ordine` (`NumeroOrdine`,`Quantita`, `DataSpedizione`, `IdProdotto`, `IdUtente`, `IdPagamento`, `IdSpedizione`) VALUES ('145879', '1', '2013/05/10', '1', 	'5', '1', '4');
INSERT INTO `AcquistoIstantaneo`.`Ordine` (`NumeroOrdine`,`Quantita`, `DataSpedizione`, `IdProdotto`, `IdUtente`, `IdPagamento`, `IdSpedizione`) VALUES ('963254', '2', '2013/05/22', '13', 	'3', '2', '1');
INSERT INTO `AcquistoIstantaneo`.`Ordine` (`NumeroOrdine`,`Quantita`, `DataSpedizione`, `IdProdotto`, `IdUtente`, `IdPagamento`, `IdSpedizione`) VALUES ('412038', '3', '2013/05/19', '3', 	'6', '1', '3');
INSERT INTO `AcquistoIstantaneo`.`Ordine` (`NumeroOrdine`,`Quantita`, `DataSpedizione`, `IdProdotto`, `IdUtente`, `IdPagamento`, `IdSpedizione`) VALUES ('108964', '2', '2013/05/31', '7', 	'2', '2', '5');
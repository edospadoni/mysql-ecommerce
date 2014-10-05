/*Creazione del DATABASE*/
CREATE DATABASE IF NOT EXISTS AcquistoIstantaneo;

/*Creazione tabella CATEGORIA*/
CREATE  TABLE IF NOT EXISTS `AcquistoIstantaneo`.`Categoria`
(
  `IdCategoria` 	INT(2) 		NOT NULL AUTO_INCREMENT,
  `NomeCategoria` 	VARCHAR(25)	NOT NULL,

  PRIMARY KEY (`IdCategoria`)
) ENGINE = InnoDB;

/*Creazione tabella PARTNER*/
CREATE  TABLE IF NOT EXISTS `AcquistoIstantaneo`.`Partner`
(
  `IdPartner` 	INT(3) 		NOT NULL AUTO_INCREMENT,
  `NomePartner` VARCHAR(50) NOT NULL ,
  `SitoWeb` 	VARCHAR(30) NOT NULL ,
  `Email` 		VARCHAR(35) NOT NULL ,

  PRIMARY KEY (`IdPartner`)
) ENGINE = InnoDB; 

/*Creazione tabella PRODOTTO*/
CREATE  TABLE IF NOT EXISTS `AcquistoIstantaneo`.`Prodotto`
(
  `IdProdotto` 		INT(4) 			NOT NULL AUTO_INCREMENT,
  `NomeProdotto`	VARCHAR(45) 	NOT NULL ,
  `DataInizio` 		DATE 			NOT NULL ,
  `DataFine` 		DATE 			NOT NULL ,
  `Citta` 			VARCHAR(35) 	NULL ,
  `Prezzo` 			DECIMAL(5,2) 	NOT NULL ,
  `IdCategoria` 	INT(2) 			NOT NULL ,
  `IdPartner` 		INT(3) 			NOT NULL ,

  PRIMARY KEY (`IdProdotto`) ,

  FOREIGN KEY (`IdCategoria` )
	REFERENCES `AcquistoIstantaneo`.`Categoria` (`IdCategoria` )
	ON DELETE CASCADE
    ON UPDATE CASCADE,

  FOREIGN KEY (`IdPartner` )
    REFERENCES `AcquistoIstantaneo`.`Partner` (`IdPartner` )
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;

/*Creazione tabella UTENTE*/
CREATE  TABLE IF NOT EXISTS `AcquistoIstantaneo`.`Utente`
(
  `IdUtente` 		INT(4) 			NOT NULL AUTO_INCREMENT,
  `Nome` 			VARCHAR(45) 	NOT NULL ,
  `Cognome` 		VARCHAR(45) 	NOT NULL ,
  `Sesso` 			ENUM('M','F') 	NOT NULL ,
  `DataDiNascita` 	DATE	 		NOT NULL ,
  `Indirizzo` 		VARCHAR(45) 	NOT NULL ,
  `NumeroCivico` 	VARCHAR(8) 		NOT NULL ,
  `CAP` 			VARCHAR(5) 		NOT NULL ,
  `Citta` 			VARCHAR(45)		NOT NULL ,
  `Stato` 			VARCHAR(30) 	NOT NULL ,
  `Email` 			VARCHAR(35) 	NOT NULL ,
  `Password` 		VARCHAR(20) 	NOT NULL ,

  PRIMARY KEY (`IdUtente`)
) ENGINE = InnoDB;

/*Creazione tabella PAGAMENTO*/
CREATE  TABLE IF NOT EXISTS `AcquistoIstantaneo`.`Pagamento`
(
  `IdPagamento` 	INT(1) 		NOT NULL AUTO_INCREMENT,
  `TipoPagamento` 	VARCHAR(20)	NOT NULL ,

  PRIMARY KEY (`IdPagamento`)
) ENGINE = InnoDB;

/*Creazione tabella SPEDIZIONE*/
CREATE  TABLE IF NOT EXISTS `AcquistoIstantaneo`.`Spedizione`
(
  `IdSpedizione` 	INT(1) 		NOT NULL AUTO_INCREMENT,
  `TipoSpedizione` 	VARCHAR(30) NOT NULL ,
  `NomeCorriere` 	VARCHAR(30) NOT NULL ,

  PRIMARY KEY (`IdSpedizione`)
) ENGINE = InnoDB;

/*Creazione tabella ORDINE*/
CREATE  TABLE IF NOT EXISTS `AcquistoIstantaneo`.`Ordine`
(
  `IdOrdine` 		INT(5) 			NOT NULL AUTO_INCREMENT,
  `NumeroOrdine` 	VARCHAR(8) 		NOT NULL ,
  `Quantita` 		INT(3) 			NOT NULL ,
  `Totale`			DECIMAL(8,2)	NOT NULL DEFAULT '0.00',
  `DataOrdine` 		DATE	 		NULL ,
  `DataSpedizione` 	DATE	 		NULL ,
  `IdProdotto` 		INT(4) 			NOT NULL ,
  `IdUtente` 		INT(4) 			NOT NULL ,
  `IdPagamento` 	INT(1) 			NOT NULL ,
  `IdSpedizione` 	INT(1) 			NOT NULL ,

  PRIMARY KEY (`IdOrdine`) ,

  FOREIGN KEY (`IdProdotto` )
    REFERENCES `AcquistoIstantaneo`.`Prodotto` (`IdProdotto` )
	ON DELETE CASCADE
    ON UPDATE CASCADE,

  FOREIGN KEY (`IdUtente` )
    REFERENCES `AcquistoIstantaneo`.`Utente` (`IdUtente` )
	ON DELETE CASCADE
    ON UPDATE CASCADE,

  FOREIGN KEY (`IdPagamento` )
    REFERENCES `AcquistoIstantaneo`.`Pagamento` (`IdPagamento` )
	ON DELETE CASCADE
    ON UPDATE CASCADE,

  FOREIGN KEY (`IdSpedizione` )
    REFERENCES `AcquistoIstantaneo`.`Spedizione` (`IdSpedizione` )
	ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;
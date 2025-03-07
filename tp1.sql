DROP DATABASE COMPTA_2;
CREATE DATABASE IF NOT EXISTS COMPTA_2;

USE COMPTA_2;

DROP TABLE IF EXISTS ARTICLE;
CREATE TABLE IF NOT EXISTS ARTICLE (
    ID int(11),
    REF varchar(13),
    DESIGNATION varchar(250),
    PRIX decimal(7,2),
    ID_FOU int(11)
);
DROP TABLE IF EXISTS FOURNISSEUR;

CREATE TABLE FOURNISSEUR(
    ID int(11),
    NOM varchar(25)
);

DROP TABLE IF EXISTS  BON;

CREATE TABLE BON (
    ID int(11),
    NUMERO int (11),
    DATE_COMMANDE datetime,
    DELAI int(11),
    ID_FOU int(11)
);

DROP TABLE IF EXISTS COMPO;

CREATE TABLE COMPO (
    ID  int(11),
    QTE int(11),
    ID_ART int(11),
    ID_BON int (11)
);

ALTER TABLE ARTICLE ADD CONSTRAINT FOREIGN KEY (ID_FOU) REFERENCES FOURNISSEUR(ID);

ALTER TABLE BON ADD CONSTRAINT FOREIGN KEY (ID_FOU)REFERENCES FOURNISSEUR(ID);

ALTER TABLE COMPO ADD CONSTRAINT FOREIGN KEY (ID_COL)REFERENCES ARTICLE(ID);

ALTER TABLE COMPO ADD CONSTRAINT FOREIGN KEY (ID_BON)REFERENCES BON(ID);
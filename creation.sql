-- CREATE DATABASE IF NOT EXISTS tutu;
 
-- USE tutu;
 
-- CREATE TABLE IF NOT EXISTS Persons (
--     ID int,
--     LastName VARCHAR(50),
--     FirstName VARCHAR(50),
--     Address VARCHAR(255),
--     City VARCHAR(50)
-- );

-- USE test;
-- CREATE TABLE IF NOT EXISTS Etudiant (
--     ID int,
--     LastName VARCHAR(50),
--     FirstName VARCHAR(50),
--     Address VARCHAR(255),
--     City VARCHAR(50)
-- );

CREATE DATABASE IF NOT EXISTS COMPTA_2;

USE COMPTA_2;

CREATE TABLE IF NOT EXISTS ARTICLE (
    ID int(11),
    REF varchar(13),
    DESIGNATION varchar(250),
    PRIX decimal(7,2),
    ID_FOU int(11)
);
CREATE TABLE FOURNISSEUR(
    ID int(11),
    NOM varchar(25)
);

CREATE TABLE BON (
    ID int(11),
    NUMERO int (11),
    DATE_COMMANDE datetime,
    DELAI int(11),
    ID_FOU int(11)
);
CREATE TABLE COMPO (
    ID  int(11),
    QTE int(11),
    ID_ART int(11),
    ID_BON int (11)
);
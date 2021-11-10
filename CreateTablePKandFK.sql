
--drop tables
DROP TABLE ANGAJAT;
Drop Table ECHIPAMENT;

--create tables+ primary key and foreign
CREATE TABLE ANGAJAT( 
    id_angajat NUMERIC(10),
    nume_angajat VARCHAR(100),
    functie VARCHAR(100),
    nr_echipamente NUMERIC(12),
    mail VARCHAR(100));

ALTER TABLE ANGAJAT ADD PRIMARY KEY (id_angajat) ;
ALTER TABLE ANGAJAT ADD UNIQUE (mail) ;

CREATE TABLE ECHIPAMENT( 
    id_echipament NUMERIC(12),
    nume_echipament VARCHAR(100),
    id_angajat NUMERIC(12),
    posesor VARCHAR(100),
    status VARCHAR(100));

ALTER TABLE ECHIPAMENT ADD PRIMARY KEY (id_echipament) ;
ALTER TABLE ECHIPAMENT ADD CONSTRAINT fk_ANGAJAT
    FOREIGN KEY (id_angajat) REFERENCES ANGAJAT(id_angajat) ;
    
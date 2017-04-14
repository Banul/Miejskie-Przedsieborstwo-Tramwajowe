
DROP USER c##wbd15 CASCADE;

CREATE USER c##wbd15 IDENTIFIED BY haslo;

GRANT UNLIMITED TABLESPACE TO c##wbd15;

GRANT connect, resource TO c##wbd15;

CONNECT c##wbd15/haslo;

CREATE TABLE "Mpt"(
  "IdMPT" Integer NOT NULL,
  "NazwaUlicy" Varchar2(30 ) NOT NULL,
  "Miasto" Varchar2(30 ) NOT NULL,
  "NumerLokalu" Varchar2 (5) NOT NULL,
  "KodPocztowy" Varchar2(6 ) NOT NULL,
  "Powierzchnia" Float,
  "NumerKRS" Varchar2(10 ) NOT NULL,
  "Nazwa" Varchar2(30 ) NOT NULL,
  "NumerTelefonu" Varchar2(12 ) NOT NULL,
    CONSTRAINT pk_Mpt PRIMARY KEY ("IdMPT") );



CREATE TABLE "Pracownicy"(
  "IdPracownika" Integer NOT NULL,
  "IdMPT" Integer NOT NULL,
  "Imie" Varchar2(15 ) NOT NULL,
  "Nazwisko" Varchar2(30 ) NOT NULL,
  "DataUrodzenia" Date NOT NULL,
  "Plec" Varchar2(1 ) CHECK("Plec" IN ('K','M')) NOT NULL,
  "EMail" Varchar2(30 ) NOT NULL,
  CONSTRAINT pk_Pracownicy PRIMARY KEY ("IdPracownika")
    );
  
  CREATE TABLE "Tramwaje"(
  "IdTramwaju" Integer NOT NULL,
  "IdZajezdni" Integer NOT NULL,
  "IdMPT" Integer NOT NULL,
  "NumerBoczny" Varchar2(5 ) NOT NULL UNIQUE,
  "NumerTramwaju" Varchar2(3 ) NOT NULL UNIQUE,
  "MocSilnika" Varchar2(4 ),
  "Przebieg" Varchar2(8 ),
  "CzyKlima" Char(1) CHECK ("CzyKlima" IN ('T','N')) NOT NULL,
  "CzyNiskopodlogowy" Char(1) CHECK ("CzyNiskopodlogowy" IN ('T','N')) NOT NULL,
  "DataZakupu" Date,
    CONSTRAINT pk_Tramwaje PRIMARY KEY ("IdTramwaju")
		);
	

	CREATE TABLE "Wycieczki"(
  "IdWycieczki" Integer NOT NULL,
  "IdMPT" Integer NOT NULL,
  "Nazwa" Varchar2(30 ) NOT NULL,
  "CenaUbezpieczenia" Float NOT NULL,
  "MaxLiczbaOsob" Integer NOT NULL,
  "CzyPrzewodnik" Char(1 ) CHECK("CzyPrzewodnik" IN ('T','N')) NOT NULL,
  "DataUruchomienia" Date,
	 CONSTRAINT pk_Wycieczki PRIMARY KEY ("IdWycieczki") 
	 );

	 
	 CREATE TABLE "ZakupyWycieczek"(
  "IdZakupuWycieczki" Integer NOT NULL,
  "IdKlienta" Integer NOT NULL,
    "IdRealizacjiWycieczki" Integer NOT NULL,
  "CzyFaktura" Char(1)  CHECK("CzyFaktura" IN ('T','N')) NOT NULL,
    "ProcentZnizki" FLOAT NOT NULL,
  "DataWplaty" Date,
  	 CONSTRAINT pk_ZakupWycieczki PRIMARY KEY ("IdZakupuWycieczki") 
	 );
	 
CREATE TABLE "Klienci"(
  "IdKlienta" Integer NOT NULL,
  "IdMPT" Integer NOT NULL,
  "Imie" Varchar2(15 ) NOT NULL,
  "Nazwisko" Varchar2(30 ) NOT NULL,
  "Plec" Varchar2(1) CHECK("Plec" IN ('K','M')) NOT NULL,
  "NumerTelefonu" Varchar2(12 ) NOT NULL,
  "CzyStaly" Varchar(1) CHECK ("CzyStaly" IN ('T','N')) NOT NULL,
   CONSTRAINT pk_Klienci PRIMARY KEY ("IdKlienta") 
  );

CREATE TABLE "ProwadzenieTramwaju"(
  "IdProwadzeniaTramwaju" Integer NOT NULL,
  "IdPracownika" Integer NOT NULL,
  "IdTramwaju" Integer NOT NULL,
  "GodzinaStartu" VARCHAR2(5) NOT NULL,
  "GodzinaStopu" VARCHAR(5) NOT NULL,  
  "Data" Date NOT NULL,
   CONSTRAINT pk_Prowadzenie PRIMARY KEY ("IdProwadzeniaTramwaju") 
   );
   
  CREATE TABLE "Zajezdnie"(
  "IdZajezdni" Integer NOT NULL,
  "IdMPT" Integer NOT NULL,
  "NazwaUlicy" Varchar2(30 ) NOT NULL,
  "NumerLokalu" Varchar2(6 ) NOT NULL,
  "KodPocztowy" Varchar2(6 ) NOT NULL UNIQUE,
  "DataUruchomienia" Date,
  "Powierzchnia" Float,
   CONSTRAINT pk_Zajezdnie PRIMARY KEY ("IdZajezdni") 
);

CREATE TABLE "Dyrektorzy"(
   "IdPracownika" INTEGER NOT NULL,
  "NazwaProwadzonegoDzialu" Varchar2(50 ) NOT NULL,
  "DataObjeciaStanowiska" Date NOT NULL,
    "Wyksztalcenie" Varchar2(30 ) NOT NULL,
  "CzyWZarzadzie" Char(1)  CHECK ("CzyWZarzadzie" IN ('T','N')) NOT NULL,
  "ProcentUdzialow" Integer,
   CONSTRAINT pk_Dyrektorzy PRIMARY KEY ("IdPracownika") 
);

CREATE TABLE "Motorniczowie"(
  "IdPracownika" Integer NOT NULL,
  "DataOstatnichBadan" Date ,
  "Waga" Integer NOT NULL,
  "Wzrost" Integer NOT NULL,
  "LiczbaWypadkow" Integer NOT NULL,
  "Procent_punktualnosci" Float,
  "LiczbaNagrod" Integer,
   CONSTRAINT pk_Motorniczowie PRIMARY KEY ("IdPracownika") 
);

CREATE TABLE "Wynagrodzenia"(
  "IdWynagrodzenia" Integer NOT NULL,
  "IdPracownika" Integer NOT NULL,
  "WysokoscWynagrodzenia" Float NOT NULL,
  "DataWplywyWynagrodzenia" Date NOT NULL,
   CONSTRAINT pk_Wynagrodzenia PRIMARY KEY ("IdWynagrodzenia"),
   "IloscPodwyzek" Integer NOT NULL,
  "DataPodwyzki" Date
);

CREATE TABLE "Trasy"(
	"IdTrasy" INTEGER NOT NULL,
	"CzyMiedzystrefowa" CHAR CHECK("CzyMiedzystrefowa" IN ('T','N')) NOT NULL,
	"PoziomBezpieczenstwa" Integer CHECK ("PoziomBezpieczenstwa" IN ('1','2','3','4','5')) NOT NULL,
    "DataOstRemontu" Date NOT NULL,
	"DataPrzyszlegoRemontu" Date,
	"Dlugosc" Float,
	 CONSTRAINT pk_Trasy PRIMARY KEY ("IdTrasy") 
);

CREATE TABLE "PrzystankiNaTrasach"(
	"IdPrzystankuNaTrasie" INTEGER NOT NULL,
	"IdPrzystanku" INTEGER NOT NULL,
	"IdTrasy" INTEGER NOT NULL,
    CONSTRAINT pk_PrzystankuNaTrasie PRIMARY KEY ("IdPrzystankuNaTrasie") 
);

CREATE TABLE "Przystanki"(
  "IdPrzystanku" Integer NOT NULL,
  "Nazwa" Varchar2(30 ) NOT NULL,
  "NumerPrzystanku" Varchar2(4) NOT NULL,
  "Miasto" Varchar2(30 ) NOT NULL,
  "NazwaUlicy" Varchar2(30 ) NOT NULL,
  "CzyZadaszony" CHAR(1) CHECK ("CzyZadaszony" IN ('T','N')) NOT NULL,
  "CzyWymagaRemontu" CHAR(1) CHECK ("CzyWymagaRemontu" IN ('T','N')) NOT NULL,
   CONSTRAINT pk_Przystanki PRIMARY KEY ("IdPrzystanku") 
);

CREATE TABLE "RealizacjeWycieczek"(
  "IdRealizacjiWycieczki" Integer NOT NULL,
  "IdWycieczki" Integer NOT NULL,
  "IdTramwaju" INTEGER NOT NULL,
  "Cena" Float NOT NULL,
  "NazwaUlicyStartu" Varchar2(30 ) NOT NULL,
  "NumerUlicyStartu" Integer NOT NULL,
  "NazwaUlicyStop" Varchar2(30 ) NOT NULL,
  "NumerUlicyStop" Integer NOT NULL,
  "DataWycieczki" DATE NOT NULL,
   CONSTRAINT pk_Realizacji PRIMARY KEY ("IdRealizacjiWycieczki") 
);
  
  CREATE TABLE "ObslugaTras"(
  "IdObslugiTrasy" Integer NOT NULL,
  "IdTramwaju" Integer NOT NULL,
  "IdTrasy" Integer NOT NULL,
  "Data" DATE NOT NULL,
   CONSTRAINT pk_Obslugi PRIMARY KEY ("IdObslugiTrasy")
  );
  
  CREATE TABLE "ObslugaPrzystankow"(
	"IdObslugiPrzystankow" INTEGER NOT NULL,
	"IdTramwaju" INTEGER NOT NULL,
	"IdPrzystanku" INTEGER NOT NULL,
	"CzySwieto" CHAR(1) CHECK ("CzySwieto" IN ('T','N')) NOT NULL,
	"GodzinaOdjazdu" VARCHAR2 (5) NOT NULL,
	CONSTRAINT pk_ObslugiPrzystankow PRIMARY KEY ("IdObslugiPrzystankow")
  );

  ALTER TABLE "ObslugaPrzystankow" ADD CONSTRAINT "fk_tramwaju_rozklad" FOREIGN KEY ("IdTramwaju") REFERENCES "Tramwaje" ("IdTramwaju");
  ALTER TABLE "ObslugaPrzystankow" ADD CONSTRAINT "fk_przystanku_rozklad" FOREIGN KEY ("IdPrzystanku") REFERENCES "Przystanki" ("IdPrzystanku");
  ALTER TABLE "Dyrektorzy" ADD CONSTRAINT "pk_prac_dyro" FOREIGN KEY ("IdPracownika") REFERENCES "Pracownicy" ("IdPracownika");
  ALTER TABLE "ObslugaTras" ADD CONSTRAINT "fk_Tramwaje" FOREIGN KEY ("IdTramwaju") REFERENCES "Tramwaje" ("IdTramwaju");
  ALTER TABLE "ObslugaTras" ADD CONSTRAINT "fk_TrasyObsl" FOREIGN KEY ("IdTrasy") REFERENCES "Trasy" ("IdTrasy");
ALTER TABLE "Motorniczowie" ADD CONSTRAINT "fk_Motorniczowie" FOREIGN KEY ("IdPracownika") REFERENCES "Pracownicy" ("IdPracownika");
ALTER TABLE "Wycieczki" ADD CONSTRAINT "fk_Wycieczki" FOREIGN KEY ("IdMPT") REFERENCES "Mpt" ("IdMPT");
ALTER TABLE "Tramwaje" ADD CONSTRAINT "fk_Tramwaju_zajezdnie" FOREIGN KEY ("IdZajezdni") REFERENCES "Zajezdnie" ("IdZajezdni");
ALTER TABLE "ProwadzenieTramwaju" ADD CONSTRAINT "fk_Prowadzenia_motorniczy" FOREIGN KEY ("IdPracownika") REFERENCES "Motorniczowie" ("IdPracownika");
ALTER TABLE "ProwadzenieTramwaju" ADD CONSTRAINT "fk_Prowadzenia_tramwaj" FOREIGN KEY ("IdTramwaju") REFERENCES "Tramwaje" ("IdTramwaju");
ALTER TABLE "ZakupyWycieczek" ADD CONSTRAINT "fk_Zakupu_klient" FOREIGN KEY ("IdKlienta") REFERENCES "Klienci" ("IdKlienta");
ALTER TABLE "Wynagrodzenia" ADD CONSTRAINT "fk_Wynagrodzenia" FOREIGN KEY ("IdPracownika") REFERENCES "Pracownicy" ("IdPracownika");
ALTER TABLE "Tramwaje" ADD CONSTRAINT "fk_Tramwaju_Mpt" FOREIGN KEY ("IdMPT") REFERENCES "Mpt" ("IdMPT");
ALTER TABLE "Zajezdnie" ADD CONSTRAINT "fk_Zajezdni" FOREIGN KEY ("IdMPT") REFERENCES "Mpt" ("IdMPT");
ALTER TABLE "RealizacjeWycieczek" ADD CONSTRAINT "fk_Realizacji_wycieczek" FOREIGN KEY ("IdWycieczki") REFERENCES "Wycieczki" ("IdWycieczki");
ALTER TABLE "RealizacjeWycieczek" ADD CONSTRAINT "fk_Realizacji_tramwaj" FOREIGN KEY ("IdTramwaju") REFERENCES "Tramwaje" ("IdTramwaju");

ALTER TABLE "ZakupyWycieczek" ADD CONSTRAINT "fk_Zakupu_realizacje" FOREIGN KEY ("IdRealizacjiWycieczki") REFERENCES "RealizacjeWycieczek" ("IdRealizacjiWycieczki");

ALTER TABLE "Klienci" ADD CONSTRAINT "fk_Klient_mpt" FOREIGN KEY ("IdMPT") REFERENCES "Mpt" ("IdMPT");

ALTER TABLE "PrzystankiNaTrasach" ADD CONSTRAINT "fk_PrzystiNaTras_Prz" FOREIGN KEY ("IdPrzystanku") REFERENCES "Przystanki" ("IdPrzystanku");

ALTER TABLE "PrzystankiNaTrasach" ADD CONSTRAINT "fk_PrzystNaTras_Tr" FOREIGN KEY ("IdTrasy") REFERENCES "Trasy" ("IdTrasy");

CREATE INDEX index_tramwaje_moc ON "Tramwaje"("MocSilnika");
CREATE INDEX index_tramwaje_przebieg ON "Tramwaje"("Przebieg");
CREATE INDEX index_real_cena ON "RealizacjeWycieczek"("Cena");
CREATE INDEX index_Wynagr_IdPrac ON "Wynagrodzenia"("IdPracownika");
CREATE INDEX index_real_IDtram ON "RealizacjeWycieczek"("IdTramwaju");
CREATE INDEX index_obsl_IDtram ON "ObslugaTras"("IdTramwaju");
CREATE INDEX index_obsl_IDtras ON "ObslugaTras"("IdTrasy");

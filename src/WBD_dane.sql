
INSERT INTO "Mpt" ("IdMPT","NazwaUlicy","Miasto","NumerLokalu","KodPocztowy","Powierzchnia","NumerKRS","Nazwa","NumerTelefonu") VALUES (1,'Nieznana','Warszawa','4','03-252','222,42','32894234','Warszawskie Tramwaje','567-323-111');
INSERT INTO "Mpt" ("IdMPT","NazwaUlicy","Miasto","NumerLokalu","KodPocztowy","Powierzchnia","NumerKRS","Nazwa","NumerTelefonu") VALUES (2,'Gdanska','Sopot','42','05-222','87,3','2131231','Gdanski przewoznik','678-423-115');
INSERT INTO "Mpt" ("IdMPT","NazwaUlicy","Miasto","NumerLokalu","KodPocztowy","Powierzchnia","NumerKRS","Nazwa","NumerTelefonu") VALUES (3,'Banulskiego','Krakow','44','05-342','251,52','3243245','Krakowski tramwaj','22-345-22-56');
INSERT INTO "Mpt" ("IdMPT","NazwaUlicy","Miasto","NumerLokalu","KodPocztowy","Powierzchnia","NumerKRS","Nazwa","NumerTelefonu") VALUES (4,'Jakubca','Lublin','2','01-122','166,7','3242345','Lublinskie MPT','567-214-667');

INSERT INTO "Pracownicy" ("IdPracownika","IdMPT","Imie","Nazwisko","DataUrodzenia","Plec","EMail") VALUES(1,'2','Karol','Krawczyk','1967-11-24','M','K.Krawcz@mpt.com');
INSERT INTO "Pracownicy" ("IdPracownika","IdMPT","Imie","Nazwisko","DataUrodzenia","Plec","EMail") VALUES(2,'1','Krzysztof','Jezyna','1987-12-18','M','K.Jezyna@mpt.com');
INSERT INTO "Pracownicy" ("IdPracownika","IdMPT","Imie","Nazwisko","DataUrodzenia","Plec","EMail") VALUES(3,'4','Janusz','Nowak','1941-05-11','M','J.Nowak@mpt.com');
INSERT INTO "Pracownicy" ("IdPracownika","IdMPT","Imie","Nazwisko","DataUrodzenia","Plec","EMail") VALUES(4,'3','Alina','Krawczyk','1986-01-18','K','A.Krawcz@mpt.com');
INSERT INTO "Pracownicy" ("IdPracownika","IdMPT","Imie","Nazwisko","DataUrodzenia","Plec","EMail") VALUES(5,'1','Tadeusz','Norek','1975-04-02','M','T.Norek@mpt.com');
INSERT INTO "Pracownicy" ("IdPracownika","IdMPT","Imie","Nazwisko","DataUrodzenia","Plec","EMail") VALUES(6,'3','Barbara','Cwierc-Pobozna','1977-03-30','K','B.CwiPobo@mpt.com');
INSERT INTO "Pracownicy" ("IdPracownika","IdMPT","Imie","Nazwisko","DataUrodzenia","Plec","EMail") VALUES(7,'4','Tadeusz','Wajche-Przeloz','1966-11-11','M','T.WajchPrzel@mpt.com');
INSERT INTO "Pracownicy" ("IdPracownika","IdMPT","Imie","Nazwisko","DataUrodzenia","Plec","EMail") VALUES(8,'2','Anna','Karwasz-Twarz','1952-11-11','K','A.KarwTwarz@mpt.com');

INSERT INTO "Motorniczowie" ("IdPracownika","DataOstatnichBadan","Waga","Wzrost","LiczbaWypadkow" ,"Procent_punktualnosci", "LiczbaNagrod") VALUES (1, '2016-10-15','120','178','2','67','1');
INSERT INTO "Motorniczowie" ("IdPracownika","DataOstatnichBadan","Waga","Wzrost","LiczbaWypadkow" ,"Procent_punktualnosci", "LiczbaNagrod") VALUES (2, '2016-11-14','78','199','0','89','4');
INSERT INTO "Motorniczowie" ("IdPracownika","DataOstatnichBadan","Waga","Wzrost","LiczbaWypadkow" ,"Procent_punktualnosci", "LiczbaNagrod") VALUES (7, '2016-10-15','103','177','2','62','0');
INSERT INTO "Motorniczowie" ("IdPracownika","DataOstatnichBadan","Waga","Wzrost","LiczbaWypadkow" ,"Procent_punktualnosci", "LiczbaNagrod") VALUES (8, '2016-09-15','72','167','7','45','2');
INSERT INTO "Motorniczowie" ("IdPracownika","DataOstatnichBadan","Waga","Wzrost","LiczbaWypadkow" ,"Procent_punktualnosci", "LiczbaNagrod") VALUES (6, '2016-12-13','88','188','1','93','8');
INSERT INTO "Motorniczowie" ("IdPracownika","DataOstatnichBadan","Waga","Wzrost","LiczbaWypadkow" ,"Procent_punktualnosci", "LiczbaNagrod") VALUES (4, '2016-08-02','92','186','3','78','2');


INSERT INTO "Dyrektorzy" ("IdPracownika","NazwaProwadzonegoDzialu","DataObjeciaStanowiska","Wyksztalcenie","CzyWZarzadzie","ProcentUdzialow") VALUES (3,'Do spraw kasowania biletow','1994-12-10','wyzsze','T','45');
INSERT INTO "Dyrektorzy" ("IdPracownika","NazwaProwadzonegoDzialu","DataObjeciaStanowiska","Wyksztalcenie","CzyWZarzadzie","ProcentUdzialow") VALUES (5,'Do spraw marketingu','2002-11-03','wyzsze','T','5');


INSERT INTO "Wynagrodzenia" ("IdWynagrodzenia","IdPracownika","WysokoscWynagrodzenia","DataWplywyWynagrodzenia","IloscPodwyzek","DataPodwyzki") VALUES (1,'1','3,500','2016-11-13','4','2016-11-10');
INSERT INTO "Wynagrodzenia" ("IdWynagrodzenia","IdPracownika","WysokoscWynagrodzenia","DataWplywyWynagrodzenia","IloscPodwyzek","DataPodwyzki") VALUES (2,'2','5,500','2016-11-14','2','2016-10-11');
INSERT INTO "Wynagrodzenia" ("IdWynagrodzenia","IdPracownika","WysokoscWynagrodzenia","DataWplywyWynagrodzenia","IloscPodwyzek","DataPodwyzki") VALUES (3,'3','16,500','2016-11-11','1','2016-10-11');
INSERT INTO "Wynagrodzenia" ("IdWynagrodzenia","IdPracownika","WysokoscWynagrodzenia","DataWplywyWynagrodzenia","IloscPodwyzek","DataPodwyzki") VALUES (4,'4','2,600','2016-11-17','3','2016-09-11');
INSERT INTO "Wynagrodzenia" ("IdWynagrodzenia","IdPracownika","WysokoscWynagrodzenia","DataWplywyWynagrodzenia","IloscPodwyzek","DataPodwyzki") VALUES (5,'5','21,500','2016-10-13','4','2016-12-11');
INSERT INTO "Wynagrodzenia" ("IdWynagrodzenia","IdPracownika","WysokoscWynagrodzenia","DataWplywyWynagrodzenia","IloscPodwyzek","DataPodwyzki") VALUES (6,'6','6,500','2016-11-10','6','2016-12-12');
INSERT INTO "Wynagrodzenia" ("IdWynagrodzenia","IdPracownika","WysokoscWynagrodzenia","DataWplywyWynagrodzenia","IloscPodwyzek","DataPodwyzki") VALUES (7,'7','7,500','2016-11-08','2','2017-01-01');
INSERT INTO "Wynagrodzenia" ("IdWynagrodzenia","IdPracownika","WysokoscWynagrodzenia","DataWplywyWynagrodzenia","IloscPodwyzek","DataPodwyzki") VALUES (8,'8','4,900','2016-11-16','4','2017-01-02');


INSERT INTO "Zajezdnie" ("IdZajezdni","IdMPT","NazwaUlicy","NumerLokalu","KodPocztowy","DataUruchomienia","Powierzchnia") VALUES (1,'1','Krakowska','22','02-122','2014-05-12','10235,25');
INSERT INTO "Zajezdnie" ("IdZajezdni","IdMPT","NazwaUlicy","NumerLokalu","KodPocztowy","DataUruchomienia","Powierzchnia") VALUES (2,'4','Belwederska','32','07-125','1992-02-12','11253,55');
INSERT INTO "Zajezdnie" ("IdZajezdni","IdMPT","NazwaUlicy","NumerLokalu","KodPocztowy","DataUruchomienia","Powierzchnia") VALUES (3,'3','Stonogi','42','01-222','2011-08-12','15235,25');
INSERT INTO "Zajezdnie" ("IdZajezdni","IdMPT","NazwaUlicy","NumerLokalu","KodPocztowy","DataUruchomienia","Powierzchnia") VALUES (4,'2','Jutrzenki','28','05-152','1999-01-22','12277,00');

INSERT INTO "Tramwaje" ("IdTramwaju", "IdZajezdni","IdMPT", "NumerBoczny","NumerTramwaju", "MocSilnika","Przebieg","DataZakupu","CzyKlima","CzyNiskopodlogowy" ) VALUES (1,'4','4','1212','1','99','240000','2005-12-05','N','N');
INSERT INTO "Tramwaje" ("IdTramwaju", "IdZajezdni","IdMPT", "NumerBoczny","NumerTramwaju", "MocSilnika","Przebieg","DataZakupu","CzyKlima","CzyNiskopodlogowy" ) VALUES (2,'2','2','2200','8','112','312000','2003-11-12','T','T');
INSERT INTO "Tramwaje" ("IdTramwaju", "IdZajezdni","IdMPT", "NumerBoczny","NumerTramwaju", "MocSilnika","Przebieg","DataZakupu","CzyKlima","CzyNiskopodlogowy" ) VALUES (3,'1','1','9984','16','110','25000','2015-06-30','N','T');
INSERT INTO "Tramwaje" ("IdTramwaju", "IdZajezdni","IdMPT", "NumerBoczny","NumerTramwaju", "MocSilnika","Przebieg","DataZakupu","CzyKlima","CzyNiskopodlogowy" ) VALUES (4,'3','3','1295','7','89','100000','2013-03-26','T','N');
INSERT INTO "Tramwaje" ("IdTramwaju", "IdZajezdni","IdMPT", "NumerBoczny","NumerTramwaju", "MocSilnika","Przebieg","DataZakupu","CzyKlima","CzyNiskopodlogowy" ) VALUES (5,'2','2','1685','34','78','174000','2011-02-15','T','T');
INSERT INTO "Tramwaje" ("IdTramwaju", "IdZajezdni","IdMPT", "NumerBoczny","NumerTramwaju", "MocSilnika","Przebieg","DataZakupu","CzyKlima","CzyNiskopodlogowy" ) VALUES (6,'4','2','2122','27','116','580000','2002-10-12','T','T');

INSERT INTO "Wycieczki" ("IdWycieczki","IdMPT","Nazwa","CenaUbezpieczenia","MaxLiczbaOsob","CzyPrzewodnik","DataUruchomienia") VALUES (1,3,'Warszawski Szlak','50,00','15','T','2006-01-01');
INSERT INTO "Wycieczki" ("IdWycieczki","IdMPT","Nazwa","CenaUbezpieczenia","MaxLiczbaOsob","CzyPrzewodnik","DataUruchomienia") VALUES (2,4,'Nocne Zwiedzanie','20,00','20','T','2012-07-01');
INSERT INTO "Wycieczki" ("IdWycieczki","IdMPT","Nazwa","CenaUbezpieczenia","MaxLiczbaOsob","CzyPrzewodnik","DataUruchomienia") VALUES (3,1,'Powstańczy Szlak','30,00','32','T','2011-01-03');
INSERT INTO "Wycieczki" ("IdWycieczki","IdMPT","Nazwa","CenaUbezpieczenia","MaxLiczbaOsob","CzyPrzewodnik","DataUruchomienia") VALUES (4,2,'Zwiedzanie Gdanska','15,00','40','N','2009-01-06');

INSERT INTO "RealizacjeWycieczek"("IdRealizacjiWycieczki","IdWycieczki","IdTramwaju","Cena","NazwaUlicyStartu","NumerUlicyStartu","NazwaUlicyStop","NumerUlicyStop","DataWycieczki") VALUES(1,'2','5','119,99','Abrahama','22','Mojzesza','35','2016-11-10');
INSERT INTO "RealizacjeWycieczek"("IdRealizacjiWycieczki","IdWycieczki","IdTramwaju","Cena","NazwaUlicyStartu","NumerUlicyStartu","NazwaUlicyStop","NumerUlicyStop","DataWycieczki") VALUES(2,'2','6','149,99','Noego','14','Samsona','44','2015-11-11');
INSERT INTO "RealizacjeWycieczek"("IdRealizacjiWycieczki","IdWycieczki","IdTramwaju","Cena","NazwaUlicyStartu","NumerUlicyStartu","NazwaUlicyStop","NumerUlicyStop","DataWycieczki") VALUES(3,'1','2','109,99','Baltazara','17','Melchiora','14','2017-01-11');
INSERT INTO "RealizacjeWycieczek"("IdRealizacjiWycieczki","IdWycieczki","IdTramwaju","Cena","NazwaUlicyStartu","NumerUlicyStartu","NazwaUlicyStop","NumerUlicyStop","DataWycieczki") VALUES(4,'3','3','88,99','Jozefa','16','Marii','6','2017-01-13');

INSERT INTO "Przystanki"("IdPrzystanku","Nazwa","NumerPrzystanku","Miasto","NazwaUlicy","CzyZadaszony","CzyWymagaRemontu") VALUES (1,'e12','24','Warszawa','Andersa','T','N');
INSERT INTO "Przystanki"("IdPrzystanku","Nazwa","NumerPrzystanku","Miasto","NazwaUlicy","CzyZadaszony","CzyWymagaRemontu") VALUES (2,'c15','11','Warszawa','Kowalskiego','N','T');
INSERT INTO "Przystanki"("IdPrzystanku","Nazwa","NumerPrzystanku","Miasto","NazwaUlicy","CzyZadaszony","CzyWymagaRemontu") VALUES (3,'b44','24','Sopot','Brzydka','N','N');
INSERT INTO "Przystanki"("IdPrzystanku","Nazwa","NumerPrzystanku","Miasto","NazwaUlicy","CzyZadaszony","CzyWymagaRemontu") VALUES (4,'a11','24','Lublin','Ładna','T','T');
INSERT INTO "Przystanki"("IdPrzystanku","Nazwa","NumerPrzystanku","Miasto","NazwaUlicy","CzyZadaszony","CzyWymagaRemontu") VALUES (5,'g8','24','Krakow','Zwykła','T','N');

INSERT INTO "Klienci" ("IdKlienta","Imie","Nazwisko","Plec","IdMPT","NumerTelefonu","CzyStaly") VALUES (1, 'Adam', 'Mickiewicz', 'M', '2','567-890-123','N');
INSERT INTO "Klienci" ("IdKlienta","Imie","Nazwisko","Plec","IdMPT","NumerTelefonu","CzyStaly") VALUES (2, 'Juliusz', 'Slowacki', 'M', '4','678-123-436','T');
INSERT INTO "Klienci" ("IdKlienta","Imie","Nazwisko","Plec","IdMPT","NumerTelefonu","CzyStaly") VALUES (3, 'Eliza', 'Orzeszkowa', 'K', '3','345-234-434','N');
INSERT INTO "Klienci" ("IdKlienta","Imie","Nazwisko","Plec","IdMPT","NumerTelefonu","CzyStaly") VALUES (4, 'Izabela', 'Lecka', 'K', '2','676-123-456','T');

INSERT INTO "ZakupyWycieczek" ("IdZakupuWycieczki","IdKlienta","CzyFaktura","DataWplaty","IdRealizacjiWycieczki","ProcentZnizki") VALUES (1, '4','T','2016-01-11','1','22,5');
INSERT INTO "ZakupyWycieczek" ("IdZakupuWycieczki","IdKlienta","CzyFaktura","DataWplaty","IdRealizacjiWycieczki","ProcentZnizki") VALUES (2, '1','T','2016-04-01','4','0');
INSERT INTO "ZakupyWycieczek" ("IdZakupuWycieczki","IdKlienta","CzyFaktura","DataWplaty","IdRealizacjiWycieczki","ProcentZnizki") VALUES (3, '2','N','2015-06-22','3','13');
INSERT INTO "ZakupyWycieczek" ("IdZakupuWycieczki","IdKlienta","CzyFaktura","DataWplaty","IdRealizacjiWycieczki","ProcentZnizki") VALUES (4, '2','T','2016-02-16','1','9,7');

INSERT INTO "ProwadzenieTramwaju" ("IdProwadzeniaTramwaju","IdPracownika","IdTramwaju","GodzinaStartu","GodzinaStopu","Data") VALUES (1,'1','4','5:50','15:25','2017-01-01');
INSERT INTO "ProwadzenieTramwaju" ("IdProwadzeniaTramwaju","IdPracownika","IdTramwaju","GodzinaStartu","GodzinaStopu","Data") VALUES (2,'2','2','15:25','23:22','2017-01-02');
INSERT INTO "ProwadzenieTramwaju" ("IdProwadzeniaTramwaju","IdPracownika","IdTramwaju","GodzinaStartu","GodzinaStopu","Data") VALUES (3,'6','1','5:23','22:14','2017-01-03');
INSERT INTO "ProwadzenieTramwaju" ("IdProwadzeniaTramwaju","IdPracownika","IdTramwaju","GodzinaStartu","GodzinaStopu","Data") VALUES (4,'4','3','22:14','04:17','2017-01-03');

INSERT INTO "Trasy" ("IdTrasy","CzyMiedzystrefowa","PoziomBezpieczenstwa","DataOstRemontu","DataPrzyszlegoRemontu","Dlugosc") VALUES (1,'N','2','2013-12-11','2017-06-01','21,4');
INSERT INTO "Trasy" ("IdTrasy","CzyMiedzystrefowa","PoziomBezpieczenstwa","DataOstRemontu","DataPrzyszlegoRemontu","Dlugosc") VALUES (2,'T','1','2015-12-11','2017-09-01','32,1');
INSERT INTO "Trasy" ("IdTrasy","CzyMiedzystrefowa","PoziomBezpieczenstwa","DataOstRemontu","DataPrzyszlegoRemontu","Dlugosc") VALUES (3,'N','5','2016-10-10','2018-01-01','11,6');
INSERT INTO "Trasy" ("IdTrasy","CzyMiedzystrefowa","PoziomBezpieczenstwa","DataOstRemontu","DataPrzyszlegoRemontu","Dlugosc") VALUES (4,'N','4','2017-01-01','2019-01-01','9,5');
INSERT INTO "Trasy" ("IdTrasy","CzyMiedzystrefowa","PoziomBezpieczenstwa","DataOstRemontu","DataPrzyszlegoRemontu","Dlugosc") VALUES (5,'T','3','2012-11-02','2017-03-01','7,2');
INSERT INTO "Trasy" ("IdTrasy","CzyMiedzystrefowa","PoziomBezpieczenstwa","DataOstRemontu","DataPrzyszlegoRemontu","Dlugosc") VALUES (6,'N','5','2015-02-01','2018-01-01','9,2');

INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (1,'3','2');
INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (2,'5','1');
INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (3,'4','3');
INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (4,'1','4');
INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (5,'1','1');
INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (6,'4','4');
INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (7,'3','6');
INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (8,'5','2');
INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (9,'5','6');
INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (10,'2','6');
INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (11,'5','3');
INSERT INTO "PrzystankiNaTrasach" ("IdPrzystankuNaTrasie","IdPrzystanku","IdTrasy") VALUES (12,'2','3');

INSERT INTO "ObslugaTras" ("IdObslugiTrasy","IdTramwaju","IdTrasy","Data") VALUES (1,'1','1','2017-01-05');
INSERT INTO "ObslugaTras" ("IdObslugiTrasy","IdTramwaju","IdTrasy","Data") VALUES (2,'2','2','2017-01-07');
INSERT INTO "ObslugaTras" ("IdObslugiTrasy","IdTramwaju","IdTrasy","Data") VALUES (3,'3','5','2017-01-11');
INSERT INTO "ObslugaTras" ("IdObslugiTrasy","IdTramwaju","IdTrasy","Data") VALUES (4,'4','3','2017-01-08');
INSERT INTO "ObslugaTras" ("IdObslugiTrasy","IdTramwaju","IdTrasy","Data") VALUES (5,'5','6','2017-01-09');
INSERT INTO "ObslugaTras" ("IdObslugiTrasy","IdTramwaju","IdTrasy","Data") VALUES (6,'6','4','2017-01-04');

INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (1,'1','1','12:14','N');
INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (2,'1','5','14:24','T');
INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (3,'2','3','14:24','T');
INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (4,'2','5','15:24','N');
INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (5,'4','4','16:38','N');
INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (6,'4','5','21:14','T');
INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (7,'4','2','19:02','N');
INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (8,'5','2','00:22','N');
INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (9,'5','3','00:02','N');
INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (10,'5','5','19:11','N');
INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (11,'6','1','18:22','N');
INSERT INTO "ObslugaPrzystankow" ("IdObslugiPrzystankow","IdTramwaju","IdPrzystanku","GodzinaOdjazdu","CzySwieto") VALUES (12,'6','4','06:36','N');






DROP TABLE IF EXISTS gemeentes_BR;
CREATE TABLE gemeentes_BR(
   Gemeente    VARCHAR(22) NOT NULL
  ,Postcode    INTEGER  NOT NULL
  ,Inwonertal  INT  NOT NULL
  ,Oppervlakte VARCHAR(5) NOT NULL
);
INSERT INTO gemeentes_BR(Gemeente,Postcode,Inwonertal,Oppervlakte) VALUES
 ('Anderlecht',1070,121394,'17,71')
,('Brussel (stad)',1000,187686,'32,61')
,('Elsene',1050,86917,'6,34')
,('Etterbeek',1040,48223,'3,15')
,('Evere',1140,43481,'5,02')
,('Ganshoren',1083,25202,'2,46')
,('Jette',1090,52604,'5,04')
,('Koekelberg',1081,21997,'1,17')
,('Oudergem',1160,34937,'9,03')
,('Schaarbeek',1030,130270,'8,14')
,('Sint-Agatha-Berchem',1082,25288,'2,95')
,('Sint-Gillis',1060,48498,'2,52')
,('Sint-Jans-Molenbeek',1080,97102,'5,89')
,('Sint-Joost-ten-Node',1210,26809,'1,14')
,('Sint-Lambrechts-Woluwe',1200,58448,'7,22')
,('Sint-Pieters-Woluwe',1150,42106,'8,85')
,('Ukkel',1180,84647,'22,91')
,('Vorst',1190,56271,'6,25')
,('Watermaal-Bosvoorde',1170,25190,'12,93');

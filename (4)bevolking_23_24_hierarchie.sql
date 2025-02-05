
-- -----------------------------------------------------------
-- RELATIE MAKEN TUSSEN "bevolking_2023_2024" en "Gemeentes"

ALTER TABLE bevolking_2023_2024
ADD COLUMN Gemeente_id INT;

ALTER TABLE bevolking_2023_2024
ADD CONSTRAINT FOREIGN KEY(Gemeente_id) REFERENCES Gemeentes(ID);
-- ---------------------------------------------------------------

-- ---------------------------------------------------------------
-- BEIDE TABELLEN JOINEN => NIEWE TABEL MAKEN

DROP TABLE IF EXISTS bevolking_2023_2024_hierarchie;
CREATE TABLE bevolking_23_24_hierarchie AS
SELECT b.NIS_code,
	   b.Gemeente,
       b.Bevolking,
       b.Gender,
       g.Provincie,
       g.Gewest,
       b.Jaar
FROM bevolking_2023_2024 b
LEFT JOIN Gemeentes g
ON b.Gemeente = g.Gemeente
ORDER BY Jaar, Gewest, Provincie, Gender;

-- PRIMARY KEY aan de tabel geven
ALTER TABLE bevolking_23_24_hierarchie
ADD COLUMN ID INT PRIMARY KEY AUTO_INCREMENT;

SELECT *
FROM bevolking_23_24_hierarchie;


-- ----------------- MANNEN + VROUWEN TABELLEN MAKEN > LABELLEN > SAMENVOEGEN ----------------------------------

-- structuur(inhoud) van tabel bekijken
SELECT *
FROM bevolking_2024_RAW;

-- ---------------------------------------------------------------
-- 1. MANNEN TABEL
		-- tabel van mannen maken (ZONDER ID)
DROP TABLE IF EXISTS mannen_2024;
CREATE TABLE mannen_2024 AS
	SELECT NIS_code,
		   Woonplaats,
		   Mannen AS Bevolking,
		   Totaal
	FROM bevolking_2024_RAW;

-- kolom "Gender" toevoegen 
ALTER TABLE mannen_2024
ADD COLUMN Gender VARCHAR(2);

-- kolom "Gender" opvullen met label > 'M'
UPDATE mannen_2024
SET Gender = 'M';

-- structuur(inhoud) van tabel bekijken
SELECT *
FROM mannen_2024;
-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------
-- 2. VROUWEN TABEL
		-- tabel van vrouwen maken

DROP TABLE IF EXISTS vrouwen_2024;
CREATE TABLE vrouwen_2024 AS
	SELECT NIS_code,
		   Woonplaats,
		   Vrouwen AS Bevolking,
		   Totaal
	FROM bevolking_2024_RAW;

-- kolom "Gender" toevoegen 
ALTER TABLE vrouwen_2024
ADD COLUMN Gender VARCHAR(2);

-- kolom "Gender" opvullen met label > 'M'
UPDATE vrouwen_2024
SET Gender = 'V';

-- structuur(inhoud) van tabel bekijken
SELECT *
FROM vrouwen_2024;
-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-- 3. SAMENVOEGEN
DROP TABLE IF EXISTS bevolking_2024;
CREATE TABLE bevolking_2024 AS
	SELECT *
	FROM mannen_2024
	UNION ALL
	SELECT *
	FROM vrouwen_2024;

SELECT *
FROM bevolking_2024;

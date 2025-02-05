
-- ----------------- MANNEN + VROUWEN TABELLEN MAKEN > LABELLEN > SAMENVOEGEN ----------------------------------

-- structuur(inhoud) van tabel bekijken
SELECT *
FROM bevolking_2023_RAW;

-- ---------------------------------------------------------------
-- 1. MANNEN TABEL
		-- tabel van mannen maken (ZONDER ID)
DROP TABLE IF EXISTS mannen_2023;
CREATE TABLE mannen_2023 AS
	SELECT NIS_code,
		   Woonplaats,
		   Mannen AS Bevolking,
		   Totaal
	FROM bevolking_2023_RAW;

-- kolom "Gender" toevoegen 
ALTER TABLE mannen_2023
ADD COLUMN Gender VARCHAR(2);

-- kolom "Gender" opvullen met label > 'M'
UPDATE mannen_2023
SET Gender = 'M';

-- structuur(inhoud) van tabel bekijken
SELECT *
FROM mannen_2023;
-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------
-- 2. VROUWEN TABEL
		-- tabel van vrouwen maken

DROP TABLE IF EXISTS vrouwen_2023;
CREATE TABLE vrouwen_2023 AS
	SELECT NIS_code,
		   Woonplaats,
		   Vrouwen AS Bevolking,
		   Totaal
	FROM bevolking_2023_RAW;

-- kolom "Gender" toevoegen 
ALTER TABLE vrouwen_2023
ADD COLUMN Gender VARCHAR(2);

-- kolom "Gender" opvullen met label > 'M'
UPDATE vrouwen_2023
SET Gender = 'V';

-- structuur(inhoud) van tabel bekijken
SELECT *
FROM vrouwen_2023;
-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------

-- 3. SAMENVOEGEN
DROP TABLE IF EXISTS bevolking_2023;
CREATE TABLE bevolking_2023 AS
	SELECT *
	FROM mannen_2023
	UNION ALL
	SELECT *
	FROM vrouwen_2023;

SELECT *
FROM bevolking_2023;



-- ONLEESBARE SYMBOLEN UITHALEN UIT bevolking_23_24_hierarchie TABEL !!!

DROP TABLE IF EXISTS fix_man_2023;
CREATE TABLE fix_man_2023 AS
SELECT *
FROM bevolking_23_24_hierarchie
WHERE Provincie IS NULL
AND Gewest IS NULL
AND Gender = 'M'
AND Jaar = 2023
ORDER BY Gemeente;

DROP TABLE IF EXISTS fix_man_2024;
CREATE TABLE fix_man_2024 AS
SELECT *
FROM bevolking_23_24_hierarchie
WHERE Provincie IS NULL
AND Gewest IS NULL
AND Gender = 'M'
AND Jaar = 2024
ORDER BY Gemeente;

DROP TABLE IF EXISTS fix_vrouw_2023;
CREATE TABLE fix_vrouw_2023 AS
SELECT *
FROM bevolking_23_24_hierarchie
WHERE Provincie IS NULL
AND Gewest IS NULL
AND Gender = 'V'
AND Jaar = 2023
ORDER BY Gemeente;

DROP TABLE IF EXISTS fix_vrouw_2024;
CREATE TABLE fix_vrouw_2024 AS
SELECT *
FROM bevolking_23_24_hierarchie
WHERE Provincie IS NULL
AND Gewest IS NULL
AND Gender = 'V'
AND Jaar = 2024
ORDER BY Gemeente;
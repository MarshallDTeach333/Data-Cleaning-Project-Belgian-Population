
-- bevolking_2023 en bevolking_2024 samenvoegen

DROP TABLE IF EXISTS bevolking_2023_2024;
CREATE TABLE bevolking_2023_2024 AS
	SELECT *
    FROM bevolking_2023
    UNION ALL
    SELECT *
    FROM bevolking_2024;
    
-- alle unieke gemeentes bekijken (om eventueel te corrigeren)
SELECT DISTINCT Gemeente
FROM bevolking_2023_2024;

SELECT *
FROM bevolking_2023_2024;

-- provincies, arrondissement, gewest en landcode (rijen) verwijderen uit tabel
DELETE FROM bevolking_2023_2024
WHERE Gemeente LIKE '%provincie%'
OR Gemeente LIKE '%arrondissement%'
OR Gemeente LIKE '%gewest%'
OR NIS_code = 1000;


-- (alles tussen haakjes) verwijderen uit kolom Gemeente => om later LEFT JOIN te kunnen toepassen 
		-- => eerst alle gemeentes vinden met extra haakjes
SELECT Gemeente 
FROM bevolking_2023_2024
WHERE Gemeente LIKE '%(%)%';

		-- => dan tussen haakjes waarden selecteren > omvormen tot lege string ('')
UPDATE bevolking_2023_2024
SET Gemeente = REGEXP_REPLACE (Gemeente, '\\([^)]*\\)', '')		-- regexp_replace_syntax => (naam_kolom, wat_je_zoekt, verander_naar)
								-- \\(   => zoekt naar "("
                                -- [^)]* => zoekt naar meerdere characters na de eerste haak tot de tweede haak
                                -- \\)   => zoekt naar de tweede haak
                                -- ''    => verandert inhoud + haakjes naar lege characters (erna kun je de lege characters trimmen)
WHERE Gemeente LIKE '%(%)%';
				-- => zoekt naar rijen in de Gemeente kolom 
                -- => waar er haakjes zijn

		-- => TRIM lege charahcters voor en na de text in elke rij van de Gemeente kolom
UPDATE bevolking_2023_2024
SET Gemeente = TRIM(gemeente);

SELECT *
FROM bevolking_2023_2024;


-- ID kolom TOEVOEGEN (Primary Key) !!!
ALTER TABLE bevolking_2023_2024
ADD COLUMN ID INT PRIMARY KEY AUTO_INCREMENT;
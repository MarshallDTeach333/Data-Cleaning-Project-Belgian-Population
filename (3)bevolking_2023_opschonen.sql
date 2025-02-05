
-- Bevolking_2023 proper maken

-- Tabel structuur bekijken
DESC bevolking_2023; 
SELECT *
FROM bevolking_2023;

-- naam kolom woonplaats veranderen naar gemeente 
ALTER TABLE bevolking_2023
RENAME COLUMN Woonplaats TO Gemeente;

-- kolom (totaal) verwijderen
ALTER TABLE bevolking_2023
DROP COLUMN Totaal;

-- kolom (jaar) aanmaken
ALTER TABLE bevolking_2023
ADD COLUMN Jaar VARCHAR (7);

-- kolom (jaar) opvullen met het jaar zodat we een label hebben voor 2023
UPDATE bevolking_2023
SET Jaar = '2023';





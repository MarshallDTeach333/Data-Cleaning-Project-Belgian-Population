
-- Bevolking_2024 proper maken

-- Tabel structuur bekijken
DESC bevolking_2024; 
SELECT *
FROM bevolking_2024;

-- naam kolom woonplaats veranderen naar gemeente
ALTER TABLE bevolking_2024
RENAME COLUMN Woonplaats TO Gemeente;

-- kolom (totaal) verwijderen
ALTER TABLE bevolking_2024
DROP COLUMN Totaal;

-- kolom (gender) voor mannen en vrouwen samen
ALTER TABLE bevolking_2024
ADD COLUMN Gender VARCHAR (2);

-- kolom (jaar) aanmaken
ALTER TABLE bevolking_2024
ADD COLUMN Jaar VARCHAR (7);

-- kolom (jaar) opvullen met het jaar zodat we een label hebben voor 2024
UPDATE bevolking_2024
SET Jaar = '2024';

             

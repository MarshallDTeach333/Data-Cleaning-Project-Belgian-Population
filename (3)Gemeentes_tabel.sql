

CREATE TABLE Gemeentes AS
	SELECT *
    FROM gemeentes_BR
    UNION ALL
    SELECT *
    FROM gemeentes_VL
    UNION ALL
    SELECT *
    FROM gemeentes_WL;
    

SELECT *
FROM Gemeentes;

ALTER TABLE Gemeentes
ADD COLUMN ID INT PRIMARY KEY AUTO_INCREMENT;

-- checken of er in deze kolom ook text tussen haakjes is
SELECT Gemeente
FROM Gemeentes
WHERE Gemeente LIKE '%(%)%';

UPDATE Gemeentes
SET Gemeente = TRIM(Gemeente);
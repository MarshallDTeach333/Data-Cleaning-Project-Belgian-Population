

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
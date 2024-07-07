-- Merge the original dataset and synthetic dataset on the date
CREATE TABLE merged_dataset AS
SELECT o.*, s.sensex
FROM original_dataset o
LEFT JOIN synthetic_dataset s ON o.date = s.date;

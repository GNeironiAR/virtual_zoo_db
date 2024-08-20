-- Get a list of all animal species along with their corresponding habitat.

SELECT s.name AS species_name, h.name AS habitat_name
FROM Species s
JOIN Habitats h ON s.habitat_id = h.habitat_id;


-- Calculate the average amount of food provided to all species during a specific day.

SELECT DATE(feeding_time) AS feeding_date, AVG(amount) AS average_amount
FROM Feeding
GROUP BY feeding_date;

-- Find all species that have received a specific treatment.

SELECT DISTINCT s.name AS species_name
FROM Species s
JOIN AnimalTreatments at ON s.species_id = at.species_id
JOIN Treatments t ON at.treatment_id = t.treatment_id
WHERE t.medication_id = 1;

-- query that uses a Common Table Expression (CTE) to calculate the total treatments administered for each animal species:
WITH TreatmentCounts AS (
    SELECT
        at.species_id,
        COUNT(*) AS total_treatments
    FROM
        AnimalTreatments at
    GROUP BY
        at.species_id
)
SELECT
    s.name AS species_name,
    COALESCE(tc.total_treatments, 0) AS total_treatments
FROM
    Species s
LEFT JOIN
    TreatmentCounts tc ON s.species_id = tc.species_id
ORDER BY
    total_treatments DESC;
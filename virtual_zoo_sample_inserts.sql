INSERT INTO Species (name, description, habitat_id) VALUES
('Lion', '{"habitat": "savanna", "size": "large", "diet": "carnivore"}', 1),
('Elephant', '{"habitat": "savanna", "size": "extra large", "diet": "herbivore"}', 2),
('Tiger', '{"habitat": "forest", "size": "large", "diet": "carnivore"}', 3),
('Giraffe', '{"habitat": "savanna", "size": "extra large", "diet": "herbivore"}', 2),
('Panda', '{"habitat": "mountains", "size": "medium", "diet": "herbivore"}', 4),
('Penguin', '{"habitat": "polar", "size": "small", "diet": "piscivore"}', 5);

-- Inserciones para la tabla de hábitats
INSERT INTO Habitats (name, description) VALUES
('Jungle', 'Lush greenery with towering trees'),
('Savanna', 'Vast open grasslands with scattered trees'),
('Forest', 'Dense wooded areas with diverse flora'),
('Mountains', 'High-altitude regions with rocky terrain'),
('Polar', 'Frozen landscapes of ice and snow'),
('Aquatic', 'Underwater environments teeming with marine life');

-- Inserciones para la tabla de alimentación
INSERT INTO Feeding (species_id, food_type, feeding_time, amount) VALUES
(1, 'Meat', '2024-05-01 08:00:00', 5.0),
(2, 'Grass', '2024-05-01 10:00:00', 10.0),
(3, 'Meat', '2024-05-01 12:00:00', 4.0),
(4, 'Leaves', '2024-05-01 14:00:00', 8.0),
(5, 'Bamboo', '2024-05-01 16:00:00', 3.0),
(6, 'Fish', '2024-05-01 18:00:00', 2.0);

-- Inserciones para la tabla de programas de reproducción
INSERT INTO BreedingPrograms (species_id, start_date, end_date) VALUES
(2, '2024-04-01', '2024-06-01'),
(4, '2024-03-01', '2024-05-01'),
(1, '2024-05-01', '2024-07-01'),
(3, '2024-02-01', '2024-04-01'),
(6, '2024-01-01', '2024-03-01'),
(5, '2024-06-01', '2024-08-01');

-- Inserciones para la tabla de registros de nacimientos
INSERT INTO BirthRecords (species_id, birth_date, mother_id, father_id) VALUES
(2, '2024-04-15', NULL, NULL),
(4, '2024-03-20', NULL, NULL),
(1, '2024-05-05', NULL, NULL),
(3, '2024-02-10', NULL, NULL),
(6, '2024-01-20', NULL, NULL),
(5, '2024-06-10', NULL, NULL);

-- Inserciones para la tabla de visitas
INSERT INTO Visits (visit_date, visitor_name, habitat_id) VALUES
('2024-05-02', 'John Smith', 1),
('2024-05-03', 'Emily Johnson', 2),
('2024-05-04', 'Michael Brown', 3),
('2024-05-05', 'Emma Wilson', 4),
('2024-05-06', 'Daniel Martinez', 5),
('2024-05-07', 'Sophia Taylor', 6);

-- Inserciones para la tabla de medicamentos
INSERT INTO Medications (name, description, price) VALUES
('Antibiotic', 'For bacterial infections', 10.0),
('Anti-inflammatory', 'Reduces inflammation and pain', 15.0),
('Vitamin supplement', 'Boosts immune system', 8.0),
('Painkiller', 'Relieves pain and discomfort', 12.0),
('Antiparasitic', 'Treats internal and external parasites', 20.0),
('Antifungal', 'For fungal infections', 18.0);

INSERT INTO Treatments (medication_id, start_date, end_date) VALUES
(1, '2024-04-15', '2024-04-25'),
(2, '2024-03-20', '2024-03-30'),
(3, '2024-05-05', '2024-05-15'),
(4, '2024-02-10', '2024-02-20'),
(5, '2024-01-20', '2024-01-30'),
(6, '2024-06-10', '2024-06-20');

-- Inserciones para la tabla de la relación entre animales y tratamientos
INSERT INTO AnimalTreatments (species_id, treatment_id) VALUES
(2, 1),
(4, 2),
(1, 3),
(3, 4),
(6, 5),
(5, 6);
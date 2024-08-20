-- Creamos la tabla Species con description como JSON
CREATE TABLE Species (
    species_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    description JSON,
    habitat_id INTEGER REFERENCES Habitats(habitat_id),
    UNIQUE(name)
);
-- Creación de la tabla para hábitats
CREATE TABLE Habitats (
    habitat_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT
);

-- Creación de la tabla para alimentación
CREATE TABLE Feeding (
    feeding_id INTEGER PRIMARY KEY,
    species_id INTEGER REFERENCES Species(species_id),
    food_type TEXT NOT NULL,
    feeding_time TIMESTAMP NOT NULL,
    amount REAL NOT NULL
);

-- Creación de la tabla para programas de reproducción
CREATE TABLE BreedingPrograms (
    breeding_id INTEGER PRIMARY KEY,
    species_id INTEGER REFERENCES Species(species_id),
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP
);

-- Creación de la tabla de registro de nacimientos
CREATE TABLE BirthRecords (
    birth_id INTEGER PRIMARY KEY,
    species_id INTEGER REFERENCES Species(species_id),
    birth_date TIMESTAMP NOT NULL,
    mother_id INTEGER,
    father_id INTEGER
);

-- Creación de la tabla para registros de visitas
CREATE TABLE Visits (
    visit_id INTEGER PRIMARY KEY,
    visit_date TIMESTAMP NOT NULL,
    visitor_name TEXT,
    habitat_id INTEGER REFERENCES Habitats(habitat_id)
);

-- Creación de la tabla para los medicamentos
CREATE TABLE Medications (
    medication_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    price REAL NOT NULL
);

-- Creamos la tabla Treatments sin la columna species_id
CREATE TABLE Treatments (
    treatment_id INTEGER PRIMARY KEY,
    medication_id INTEGER REFERENCES Medications(medication_id),
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP
);

-- Creación de la tabla para la relación entre animales y enfermedades tratadas
CREATE TABLE AnimalTreatments (
    species_id INTEGER REFERENCES Species(species_id),
    treatment_id INTEGER REFERENCES Treatments(treatment_id),
    PRIMARY KEY (species_id, treatment_id)
);
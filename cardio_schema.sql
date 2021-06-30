CREATE TABLE patient_table (
  patient_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
  age      INTEGER,    -- in days
  gender   INTEGER,
  height   INTEGER,
  p_weight INTEGER,
  cardio   INTEGER
);

CREATE TABLE health_factors_table (
  patient_id INTEGER PRIMARY KEY NOT NULL UNIQUE,
  ap_hi        INTEGER,   
  ap_lo        INTEGER,
  cholesterol  INTEGER,
  gluc         INTEGER
);

CREATE TABLE lifestyle_table (
  patient_id INT PRIMARY KEY NOT NULL UNIQUE,
  smoke      INT,
  alchol     INT,
  active     INT
);


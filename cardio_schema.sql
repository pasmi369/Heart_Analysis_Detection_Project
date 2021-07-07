CREATE TABLE patient_table (
  patient_id INT PRIMARY KEY NOT NULL UNIQUE,
  age      INT,    -- in days
  gender   INT,
  height   INT,
  p_weight INT,
  cardio   INT
);

CREATE TABLE health_factors_table (
  patient_id INT PRIMARY KEY NOT NULL UNIQUE,
  ap_hi        INT ,   
  ap_lo        INT,
  cholesterol  INT,
  gluc         INT
);

CREATE TABLE lifestyle_table (
  patient_id INT PRIMARY KEY NOT NULL UNIQUE,
  smoke      INT,
  alchol     INT,
  active     INT
);
CREATE TABLE calculated_table (
  patient_id INT PRIMARY KEY NOT NULL UNIQUE,
  age_year   SMALLINT,
  AGE_GROUP  VARCHAR,
  BMI        NUMERIC(3,2),
  BMI_GROUP  VARCHAR

);


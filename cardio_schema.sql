DROP TABLE IF EXISTS patient_table;
DROP TABLE IF EXISTS health_factors_table;
DROP TABLE IF EXISTS lifestyle_table;
DROP TABLE IF EXISTS calculated_table;
DROP TABLE IF EXISTS patient_table;
-- *****************
--  patient_table
-- *****************
CREATE TABLE patient_table(
    patient_id NUMERIC NOT NULL, 
    age   NUMERIC NOT NULL,
    gender NUMERIC NOT NULL,
    height NUMERIC NOT NULL,
    weight NUMERIC NOT NULL,
    cardio NUMERIC NOT NULL,
    PRIMARY KEY (patient_id)
);
-- ***********************
--  health_factors_table
-- ***********************
CREATE TABLE health_factors_table(
    hf_id    INT GENERATED ALWAYS AS IDENTITY,
    patient_id NUMERIC   NOT NULL,
    ap_hi       NUMERIC  NOT NULL,
    ap_lo       NUMERIC  NOT NULL,
    cholesterol  NUMERIC NOT NULL,
    gluc       NUMERIC   NOT NULL,
    PRIMARY KEY (hf_id),
    FOREIGN KEY (patient_id)
    REFERENCES patient_table(patient_id)
    ON UPDATE CASCADE
);
-- *****************
-- lifestyle_table
-- *****************
CREATE TABLE  lifestyle_table(
    ls_ID  INT   GENERATED ALWAYS AS IDENTITY,
    patient_id NUMERIC   NOT NULL,
    smoke  NUMERIC       NOT NULL,
    alco   NUMERIC       NOT NULL,
    active NUMERIC       NOT NULL,
    PRIMARY KEY (ls_id),
    FOREIGN KEY (patient_id)
    REFERENCES patient_table(patient_id)
    ON UPDATE CASCADE
);
-- ******************
-- calculated_table 
-- ******************
CREATE TABLE calculated_table(
    calc_id     INT         GENERATED ALWAYS AS IDENTITY,
    patient_id  NUMERIC       NOT NULL,
    age_year    NUMERIC       NOT NULL,
    age_group   VARCHAR       NOT NULL,
    bmi         NUMERIC(5,2)  NOT NULL,
    bmi_range   VARCHAR       NOT NULL,
    PRIMARY KEY (calc_id),
    FOREIGN KEY (patient_id)
    REFERENCES patient_table(patient_id)
    ON UPDATE CASCADE
);
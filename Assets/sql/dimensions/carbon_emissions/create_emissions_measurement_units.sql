DROP TABLE IF EXISTS dbo.EmissionMeasurementUnits
CREATE TABLE dbo.EmissionMeasurementUnits(
    code VARCHAR(16) NOT NULL PRIMARY KEY,
    unit varchar(50),
    ten_power int
);

INSERT INTO dbo.EmissionMeasurementUnits (code, unit, ten_power)
VALUES
('T_CO2_EQVT', 'Tonnes of CO2 equivalent',3),
('PC', 'Percentage',0),
('KG_HAB', 'Kilograms per capita',3),
('KG_1000USD', 'Kilograms per 1 000 US dollars',3),
('IDX', 'Index',0);
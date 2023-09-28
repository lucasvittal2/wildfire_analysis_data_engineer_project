DROP TABLE dbo.GreenHouseGasEmissions;
CREATE TABLE dbo.GreenHouseGasEmissions(
    id INTEGER IDENTITY(1,1) PRIMARY KEY,
    country_code CHAR(3),
    date  DATE,
    unit_code VARCHAR(16),
    variable varchar(20),
    gas_code varchar(10),
    emission_value FLOAT(2),
    FOREIGN KEY (country_code) REFERENCES dbo.country(code),
    FOREIGN KEY (date) REFERENCES dbo.date(date),
    FOREIGN KEY(unit_code) REFERENCES dbo.EmissionMeasurementUnits(code),
    FOREIGN KEY(gas_code) REFERENCES dbo.PollutantGas(code)
);
DROP  TABLE IF EXISTS dbo.AvgPreciptationMeasures;
CREATE TABLE dbo.AvgPreciptationMeasures(
    id INT Identity(0,1) NOT NULL PRIMARY KEY,
    country_code CHAR(3),
    indicator_code VARCHAR(32),
    avg_preciptation bigint,
    FOREIGN KEY(country_code) REFERENCES dbo.Country(code),
    FOREIGN KEY(indicator_code) REFERENCES dbo.PreciptationIndicators(code)
);
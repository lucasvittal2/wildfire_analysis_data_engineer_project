DROP TABLE IF EXISTS dbo.LocalAvgTemperatures;
CREATE TABLE dbo.LocalAvgTemperatures(
    id INT IDENTITY(0,1) NOT NULL PRIMARY KEY,
    date DATE NOT NULL,
    location_id NVARCHAR(15) NOT NULL,
    type NVARCHAR(20),
    avg_temperature FLOAT(2),
    FOREIGN KEY (date) REFERENCES dbo.date(date),
    FOREIGN KEY (location_id) REFERENCES staging.locations(id)
);


TRUNCATE TABLE dbo.LocalAvgTemperatures;
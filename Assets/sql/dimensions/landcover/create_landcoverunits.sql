DROP TABLE IF EXISTS LandCoverUnits;
CREATE TABLE dbo.LandCoverUnits(
        code VARCHAR(3) NOT NULL PRIMARY KEY,
        power_code INT,
        unit VARCHAR(32)
);

INSERT INTO dbo.LandCoverUnits(code, power_code, unit)
VALUES 
('KM2',3,'Square kilometres'),
('PC',0, 'Percentage');
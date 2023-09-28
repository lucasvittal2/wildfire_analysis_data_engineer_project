DROP TABLE IF EXISTS dbo.BurnedAreaEvolution;
CREATE TABLE dbo.BurnedAreaEvolution(
    id CHARACTER(20) NOT NULL PRIMARY KEY,
    date date NOT NULL,
    region_code VARCHAR(10) NOT NULL,
    cropland_ba INT,
    forest_ba INT,
    grass_and_shrubland_ba INT,
    wetlands_ba INT,
    settlement_ba INT,
    other_ba INT,
    FOREIGN KEY (date) REFERENCES dbo.Date(date),
    FOREIGN KEY (region_code) REFERENCEs dbo.Regions(code)
);
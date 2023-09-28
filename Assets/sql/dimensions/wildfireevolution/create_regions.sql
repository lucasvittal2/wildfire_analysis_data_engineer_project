DROP  TABLE IF EXISTS  dbo.Regions;
CREATE TABLE dbo.Regions(
    code VARCHAR(10) PRIMARY KEY,
    country_code CHAR(3),
    name VARCHAR(100),
    FOREIGN KEY (country_code) REFERENCES dbo.Country(code),
);

INSERT INTO Regions
SELECT DISTINCT GID_1 AS code,GID_0 as country_code, Region as name from test_region;
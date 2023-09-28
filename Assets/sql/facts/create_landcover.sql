
DROP TABLE IF EXISTS dbo.LandCover;
CREATE TABLE dbo.LandCover(
    id INTEGER IDENTITY(0,1) PRIMARY KEY,
    date date,
    unit_code VARCHAR(3),
    veg_code VARCHAR(20),
    country_code CHAR(3),
    ocde_code VARCHAR(50),
    cover_value FLOAT(2),
    FOREIGN KEY (ocde_code) REFERENCES dbo.SubnationalUnit(code),
    FOREIGN KEY (veg_code) REFERENCES dbo.LandcoverClass(code),
    FOREIGN KEY (country_code) REFERENCES dbo.country(code),
    FOREIGN KEY (unit_code) REFERENCES dbo.LandCoverUnits(code),
);
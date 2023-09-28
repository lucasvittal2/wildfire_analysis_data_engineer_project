DROP TABLE IF EXISTS dbo.LandcoverClass;
CREATE TABLE dbo.LandcoverClass(
        code VARCHAR(20) NOT NULL PRIMARY KEY,
        name varchar(32)
);

INSERT INTO dbo.LandcoverClass(code,name)
VALUES 
('CROPL','Cropland'),
('BARE','Bare area'),
('FOREST','Tree cover'),
('GRSL','Grassland'),
('SHRUBL','Shrubland'),
('SPARSE_VEGETATION','Sparse vegetation'),
('URBAN','Artificialsurfaces'),
('WATER','Inland water'),
('WETL','Wetland');
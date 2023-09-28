DROP TABLE IF EXISTS staging.locations;
CREATE TABLE staging.locations(
    id nvarchar(15) NOT NULL PRIMARY KEY,
    name nvarchar(255) NOT NULL,
    type nvarchar(20)
);
DROP TABLE IF EXISTS dbo.EconomicLifeLosses;
CREATE TABLE dbo.EconomicLifeLosses(
    dis_num VARCHAR(15) PRIMARY KEY,
    country_code CHAR(3),
    location  VARCHAR(3000),
    date  date,
    disaster_type VARCHAR(40),
    total_deaths INT,
    total_damage float(2),
    FOREIGN KEY(country_code)  REFERENCES dbo.country(code),
    FOREIGN KEY(date) REFERENCES dbo.date(date),

);

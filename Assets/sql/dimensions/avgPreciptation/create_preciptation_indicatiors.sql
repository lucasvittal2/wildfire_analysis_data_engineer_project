DROP  TABLE IF EXISTS  dbo.PreciptationIndicators;
CREATE TABLE dbo.PreciptationIndicators(
    code VARCHAR(32) PRIMARY KEY,
    name VARCHAR(90)
);

INSERT INTO PreciptationIndicators(code, name)
VALUES
('AG.LND.PRCP.MM', 'Average precipitation in depth (mm per year)' );
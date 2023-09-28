CREATE TABLE dbo.PollutantGas(
    code VARCHAR(10) NOT NULL PRIMARY KEY,
    pollutant VARCHAR(50)
);

INSERT INTO dbo.PollutantGas (code, pollutant)
VALUES
('CH4','Methane'),
('CO2','Carbon dioxide'),
('GHG','Greenhouse gases'),
('HFC','Hydrofluorocarbons'),
('HFC_PFC','PFC Unspecified mix of HFCs and PFCs'),
('N2O','Nitrous oxide'),
('NF3','Nitrogen trifluoride'),
('PFC','Perfluorocarbons'),
('SF6','Sulphur hexafluoride');
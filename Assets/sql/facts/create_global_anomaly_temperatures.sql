DROP TABLE IF EXISTS dbo.GlobalAnomalyTemperatures;
CREATE TABLE dbo.GlobalAnomalyTemperatures(
    id INTEGER IDENTITY(1,1) PRIMARY KEY,
    date date NOT NULL,
    coverage VARCHAR(12) CHECK (coverage in ('land', 'sea','land and sea')),
    anomaly float(2),
    FOREIGN KEY(date) REFERENCES dbo.date(date)
);

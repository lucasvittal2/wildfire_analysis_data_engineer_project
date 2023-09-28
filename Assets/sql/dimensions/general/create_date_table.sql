CREATE TABLE dbo.date (
    date DATE NOT NULL PRIMARY KEY,
    year INTEGER,
    month INTEGER,
    day INTEGER,
    CHECK (year >= 1850 AND year <= 9999),  -- You can adjust the year range as needed
    CHECK (month >= 1 AND month <= 12),  -- Month should be between 1 and 12
    CHECK (day >= 1 AND day <= CASE
        WHEN month IN (1, 3, 5, 7, 8, 10, 12) THEN 31
        WHEN month IN (4, 6, 9, 11) THEN 30
        WHEN month = 2 THEN
            CASE
                WHEN year % 4 = 0 AND (year % 100 != 0 OR year % 400 = 0) THEN 29  -- Leap year
                ELSE 28
            END
        ELSE 31  -- Default to 31 for invalid months
    END)
);


WITH DateGenerator AS (
    SELECT
        CAST('1850-01-01' AS DATE) AS date
    UNION ALL
    SELECT
        DATEADD(DAY, 1, date)
    FROM
        DateGenerator
    WHERE
        DATEADD(DAY, 1, date) <= GETDATE() -- Change to your current date if needed
)

-- Insert into the dbo.date table
INSERT INTO dbo.date (date, year, month, day)
SELECT
    date,
    YEAR(date) AS year,
    MONTH(date) AS month,
    DAY(date) AS day
FROM
    DateGenerator
OPTION (MAXRECURSION 0);
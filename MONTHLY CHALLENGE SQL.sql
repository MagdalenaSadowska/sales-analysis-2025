SELECT *
FROM dbo.SALE;

SELECT count (*)
FROM dbo.SALE;

SELECT count (*) total_rows,
SUM(CASE WHEN numer_zamowienia IS NULL THEN 1 ELSE 0 END) AS null_numer_zamowienia_rows,
SUM(CASE WHEN data IS NULL THEN 1 ELSE 0 END) AS null_data,
SUM(CASE WHEN kategoria IS NULL THEN 1 ELSE 0 END) AS null_kategoria,
SUM(CASE WHEN kanal_sprzedazy IS NULL THEN 1 ELSE 0 END) AS null_kanal_sprzedazy,
SUM(CASE WHEN kwota_zl IS null THEN 1 ELSE 0 END) AS null_kwota_zl
FROM dbo.SALE;

SELECT count(*) AS total_rows, count(DISTINCT numer_zamowienia) AS unique_numer_aamowienia
FROM dbo.SALE;

SELECT data
FROM dbo.SALE
WHERE data LIKE '__-__-____'
OR data LIKE '__/__/____'
OR data LIKE '__.__.____'
OR data LIKE '____.__.__'
OR data LIKE '____/__/__';

SELECT MAX(data) AS latest_date, MIN(data) AS earliest_date
FROM dbo.SALE;

SELECT DISTINCT kategoria
FROM dbo.SALE;

SELECT DISTINCT kanal_sprzedazy
FROM dbo.SALE;

ALTER TABLE dbo.SALE
ALTER COLUMN kwota_zl decimal(18,2)

SELECT *
FROM dbo.SALE
WHERE kwota_zl <= 0;

-- Capstone: Data Storytelling, Excel & SQL
-- Analyst: Lopez
-- Territory analyzed: Texas
-- Query 1: Overall revenue, start date and end date for the territory
SELECT
    SUM(ss.Sale_Amount) AS Total_Revenue,
    MIN(ss.Transaction_Date) AS Start_Date,
    MAX(ss.Transaction_Date) AS End_Date
FROM store_sales ss
INNER JOIN store_locations sl
    ON ss.Store_ID = sl.StoreId
WHERE sl.State = 'Texas';


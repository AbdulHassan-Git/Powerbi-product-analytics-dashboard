---SQL Query Used for Data Preparation
----------------------------------------------------------

WITH sales_cte AS
(
    SELECT
        a.Product_ID,
        a.Product,
        a.Category,
        a.Brand,
        a.Description,
        a.Sale_Price,
        a.Cost_Price,
        a.Image_url,
        DATEFROMPARTS(YEAR(b.[Date]), DAY(b.[Date]), MONTH(b.[Date])) AS SalesDate,
        b.Customer_Type,
        b.Discount_Band,
        b.Units_Sold,
        b.Country
    FROM Product_data AS a
    JOIN product_sales AS b
        ON a.Product_ID = b.Product
),
final_cte AS
(
    SELECT
        Product_ID,
        Product,
        Category,
        Brand,
        Description,
        Sale_Price,
        Cost_Price,
        Image_url,
        SalesDate,
        Customer_Type,
        Discount_Band,
        Units_Sold,
        Country,
        Sale_Price * Units_Sold AS Revenue,
        Cost_Price * Units_Sold AS Total_Cost,
        DATENAME(MONTH, SalesDate) AS [Month],
        MONTH(SalesDate) AS MonthNo,
        YEAR(SalesDate) AS Year
    FROM sales_cte
)
SELECT
    f.Product_ID,
    f.Product,
    f.Category,
    f.Brand,
    f.Description,
    f.Sale_Price,
    f.Cost_Price,
    f.Image_url,
    f.SalesDate,
    f.Customer_Type,
    f.Discount_Band,
    f.Units_Sold,
    f.Country,
    f.Revenue,
    f.Total_Cost,
    f.[Month],
    f.MonthNo,
    f.Year,
    d.Discount,
    (1 - d.Discount * 1.0 / 100.0) * f.Revenue AS Discount_Revenue
FROM final_cte AS f
JOIN discount_data AS d
    ON f.Discount_Band = d.Discount_Band
   AND f.[Month] = d.[Month];
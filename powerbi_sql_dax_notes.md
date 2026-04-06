# Power BI Project SQL and DAX Notes

## SQL Query Used for Data Preparation

```sql
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
        YEAR(SalesDate) AS YearNo
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
    f.YearNo,
    d.Discount,
    (1 - d.Discount * 1.0 / 100.0) * f.Revenue AS Discount_Revenue
FROM final_cte AS f
JOIN discount_data AS d
    ON f.Discount_Band = d.Discount_Band
   AND f.[Month] = d.[Month];
```

## DAX Formulas Used

### Calendar Table

```DAX
Calendar =
CALENDAR ( MIN(Sales_Data[SalesDate]), MAX(Sales_Data[SalesDate]) )
```

### Calendar Year Column

```DAX
Year = YEAR(Calendar[Date])
```

### Calendar Month Number Column

```DAX
MonthNo = MONTH(Calendar[Date])
```

### Calendar Month Column

```DAX
Month = FORMAT(Calendar[Date], "MMMM")
```

### Units Sold

```DAX
Units Sold =
SUM(Sales_Data[Units_Sold])
```

### Units Sold Last Year

```DAX
Units Sold LY =
CALCULATE(
    [Units Sold],
    DATEADD(Calendar[Date], -1, YEAR)
)
```

### Unit Sold YoY

```DAX
Unit Sold YoY =
DIVIDE([Units Sold] - [Units Sold LY], [Units Sold LY])
```

### Total Revenue

```DAX
Total Revenue =
SUM(Sales_Data[Discount_Revenue])
```

### Total Cost

```DAX
Total Cost =
SUM(Sales_Data[Total_Cost])
```

### Profit

```DAX
Profit =
[Total Revenue] - [Total Cost]
```

### Profit Last Year

```DAX
Profit LY =
CALCULATE(
    [Profit],
    DATEADD(Calendar[Date], -1, YEAR)
)
```

### Profit YoY

```DAX
Profit YoY =
DIVIDE([Profit] - [Profit LY], [Profit LY])
```

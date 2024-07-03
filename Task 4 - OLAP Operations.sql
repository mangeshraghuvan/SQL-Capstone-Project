CREATE DATABASE sales_data;

CREATE TABLE sales_sample (
    Product_Id INT,
    Region VARCHAR(50),
    Date DATE,
    Sales_Amount INT
);

INSERT INTO sales_sample (Product_Id, Region, Date, Sales_Amount) VALUES
(1, 'North', '2022-03-23', 15000),
(2, 'South', '2022-12-02', 21500),
(3, 'South', '2022-05-09', 32500),
(4, 'East', '2024-11-08', 42500),
(1, 'West', '2024-10-21', 11500),
(2, 'West', '2024-09-22', 26500),
(3, 'North', '2024-02-03', 35100),
(4, 'North', '2024-06-04', 48600),
(1, 'East', '2024-03-12', 95200),
(2, 'East', '2024-09-11', 92600);

Select * from sales_sample;

SELECT Region, Product_Id, SUM(Sales_Amount) AS Sales_Sum
FROM sales_sample
GROUP BY Region, Product_Id
ORDER BY Region, Product_Id;

SELECT  Product_Id, Region, SUM(Sales_Amount) AS Sales_Sum
FROM sales_sample
GROUP BY ROLLUP (Product_Id, Region)
ORDER BY Product_Id, Region;

SELECT  Product_Id, Region, Date, SUM(Sales_Amount) AS Sales_Sum
FROM sales_sample
GROUP BY Cube (Product_Id, Region, Date)
ORDER BY Product_Id, Region, Date;

SELECT  Product_Id, Region, Date, Sales_Amount
FROM sales_sample
WHERE Region = 'West';

SELECT  Product_Id, Region, Date, Sales_Amount
FROM sales_sample
WHERE Date BETWEEN '2022-05-09' AND '2024-03-12';

SELECT  Product_Id, Region, Date, Sales_Amount
FROM sales_sample
WHERE Product_Id = 1 AND Region = 'East' AND Date BETWEEN '2022-05-09' AND '2024-03-12';




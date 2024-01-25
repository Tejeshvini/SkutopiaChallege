With cte1 as(
SELECT  country,
        date as year,
        GDP,
        (GDP-LAG (GDP,1) OVER (PARTITION BY country ORDER BY date ASC))
        /(LAG (GDP,1) OVER (PARTITION BY country ORDER BY date ASC)) AS gdp_growth
FROM gdp_data where date >= 2000 and GDP != 'NaN'
),
cte2 as(
    Select min(gdp_growth) min_gdp_growth_since_2000 , max(gdp_growth) max_gdp_growth_since_2000
    from cte1
)
Select a.country, a.year, a.GDP, a.gdp_growth, b.min_gdp_growth_since_2000, b.max_gdp_growth_since_2000 from cte1 a, cte2 b

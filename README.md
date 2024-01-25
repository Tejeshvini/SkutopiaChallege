Skutopia - Data and Analytics Engineering Challenge

The github docs contain:
1. A jupyter notebook file which was 
   - used for extracting paginated data from the API,
   - Write the cleaned data into the local postgres database
   - Aggregating data to use for the last use case of visualisation challenge

2. dbt_workspace folder which is used to build the model for Analytics Engineering using dbt to create ctes


Explanation of solution

**Data Engineering Challenge:**

 I used ipynb to extract the data from the worldbank API and normalise the jsons. The raw data (after a little clean up) was loaded into the postgres data base with the following schema:
  **ID TEXT PRIMARY KEY     NOT NULL,
    Country           TEXT    NOT NULL,
    Country_Code      TEXT    NOT NULL,
    DATE        INT    NOT NULL,
    GDP         FLOAT**

The above schema was defined and created in Postgres database (called gdp_worldbank) hosted locally

**Analytics Engineering and CI/CD Challenge:**

I created a dbt workspace using visual studio code and then connected to the gdp_worldbank database on postgres. Then under the **models** folder I created a model with ctes to create the columns gdp_growth, min growth since 2000 and ,ax growth since 2000. 
**Please note the max and min values were calculated across all countries without partitioning on countries. Hence the value is constant in the column.**

I have extracted the results in the desired format and attached the csv in the email.

I pushed all the changes in the git repository I created for this challenge and clones it locally before starting the dbt part of the challenge.

**Visualisation Challenge**

This task was acheived using Google Data Studio/ Looker Studio.

Please note the first scorecard is for all invoices (including returns)

The last part of the task was acheived by created a sub aggregated tables for 1. All sales(including returns) and 2. Returns only with an open input option which changes the number of top n results.

I have attached the pdf download in the email and also sharing the link here - Skutopia Visualisation Challenge

https://lookerstudio.google.com/s/n03lWO_ZdQ0



        

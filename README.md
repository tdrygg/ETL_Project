# Project Report 
---------------------------------------
## Extract

#### Data Sources:<br>
* All data sources are csv file format. 

1: "120 years of Olympic History"<br>
https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results<br>

2: "NOC Regions"<br>
https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results<br>


3: "Country Socioeconomic Status Scores: 1880-2010"
https://www.kaggle.com/sdorius/globses

## Transform <br> 

The task was to create a database from separate data sources that would be used to analyse historical olympic successes across countries compared with a time series economic and education measures.

We completed the following data cleaning activities:

* Removed unnecessary columns from data sources 1 and 3 not relevant to the researchers data request. 

* Dropped null values from data source 1 set so that it represented only countries that only won metals. 

* Checked that National Olympic Committe (NOC) country code in data set 1 matches the World Bank ID (WBID) country code in data set 3.  This would provide a field that can be used to join the production tables.  

* Merged data set 1 and 2 so that the National Olympic Committe (NOC) field in the Olympic data was paired with it's corresponding country name. 

 

## Load <br>

* Creating a relational database in PostGres, we loaded two tables, athlete_events and country_ses:<br>
<br>

   * **athlete_events**: Represents 120 years of of olymic results.  This data transformed to only include medal winners.  The table includes the country (code and name), year and season in which the olympics took place, sport type and specific event.  It also includes which metal type the country won for that event.<br>
   * **country_ses** : Is a time seriese displaying socio-economic ratings across countries over the past from 1880 to 2010. Country data points are reported in ten year increments.  The SES field represent a composit score of GDP and education measures and reported as a integer (1-99), the higher the score the greater the socio-economic status. This table also contains a measure of the GDP per capita. <br>
<br>

* This relational database was created to allow the users to manipulate historical olympic performance data by country and compare it with historical country SES and GDP by year. 


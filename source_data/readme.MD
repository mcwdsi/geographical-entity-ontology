# Adding new adminstrative units to GEO

## 1.	Retrieve raw data

* http://download.geonames.org/export/dump/
* http://www.geonames.org/ -> Free Gazetteer Data -  download by ISO-3166 country code


##  2. 	Prep data
1.	Sort Feature code column (8th column) by alpha
2.	Get rid of rows with adminstrative codes for historical admin levels (e.g., ADMN1H)
3.	Import all rows with ADM1, ADM2, ADM3, ADM4 into a text file
4.	Save in source_data subdirectory on github
**Note** If using Excel, be sure to format all cells as text or else dates and digits with 0 place holders will be reformatted.

There is also a shell script that does this in the github bin subdirectory.

##  3.  Set up config files
1.	Find highest IRI 
    ./bin/find-highest-obo-id.sh
2.	Create a new config file for each country
    config/COUNTRYNAME-config.txt
    
      input=PATH-TO-INUT
      
      countrycode=ISO-3166 country code
      
      owlpurlbase=
      
      contryiri=full IRI for the country territory in GEO (e.g., 'region of Canada')
      
      irilookup=PATH for iris-for-parsting-geonames.txt (This file contains GEO IRIs that are used in the model)
      
      iriStart= IRI > Output of shell script + 10 (from Step 3.1)

## 4. Run code
1.	GeoNamesAdminLevelProcessing.java
2.	Code is in dtm-json-to-owl
3.	Java GeoNamesAdminLevelProcessing Path to config file
More detailed instructions to follow.

# Analysis-of-sales-of-a-company

Motive: To unlock sales insight that are not visible before for sales team for decision support and automate them to reduced manual time spent in data gathering.

# Usual flow of project 

We ususally access data from the IT team (in this case: sales management system). But as this data is from oltp it is critical. So we pull the data from OLTP ( in our case MySQL DB) and transform the data. After ELT, the data is stored in the data warehouse ( ex: Teradata, snowflake). And to do this transformation people use apache, python, informatika etc (This transformation is done by data engineers).

But in this case, I am not building the data warehouse directly, I am building the dashboard by using sql db.

for $j in doc("Company.xml")/companyList/company
return
 (string($j/identification/name)," ")
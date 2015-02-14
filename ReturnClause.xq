for $i in doc("Company.xml")/companyList/company/identification/name
return
  <Names>
    {$i}
  </Names>
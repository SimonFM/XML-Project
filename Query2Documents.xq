for $c in doc("Company.xml")/companyList/company
for $f in doc("Factory.xml")/factoryList/factory
where $f/orderTotal/@company = $c/identification/name
  where $f/orderTotal/@company = "LifeInvader"
return
  <result>
      {($f/orderTotal)}
  </result>
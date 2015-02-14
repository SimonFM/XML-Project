for $c in doc("Technician.xml")/technicianList/technician/identification
where contains($c/union,"IRSA")
return
<Union_Member>
  {
    string($c/name)
  }
</Union_Member>

for $q in doc("Factory.xml")/factoryList/factory
order by $q/orderTotal descending
return
<factories>
  {
    "Factory:",(string($q/@factoryID),"- Orders",(string($q/orderTotal)))
  }
</factories>

for $j in doc("Company.xml")/companyList/company
return
 (string($j/identification/name)," ")
 
 let $c:= doc("Technician.xml")/technicianList/technician
return
  <listOfname>
  {
    $c
  }
  </listOfname>
  
for $t in doc("Technician.xml")/technicianList/technician
for $f in doc("Factory.xml")/factoryList
where $f/factory/@factoryID = $t/@factoryID
  where $f/factory[@factoryID < 100]
return
  <result>
      {
        $f/factory/orderTotal
      }
  </result>
  
for $c in doc("Company.xml")/companyList/company
for $f in doc("Factory.xml")/factoryList/factory
where $f/orderTotal/@company = $c/identification/name
  where $f/orderTotal/@company = "LifeInvader"
return
  <result>
      {($f/orderTotal)}
  </result>
  
  
for $i in doc("Company.xml")/companyList/company/identification/name
return
  <Names>
    {$i}
  </Names>
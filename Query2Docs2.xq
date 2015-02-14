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
for $q in doc("Factory.xml")/factoryList/factory
order by $q/orderTotal descending
return
<factories>
  {
    "Factory:",(string($q/@factoryID),"- Orders",(string($q/orderTotal)))
  }
</factories>
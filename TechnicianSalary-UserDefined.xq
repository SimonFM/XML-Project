declare function local:sorted_technicnian_passed()
{
  for $v in doc("Technician.xml")/technicianList/technician/currentTest
  where $v/@result = "Passed"
  return
  <technicians>
      {
        ("Name:",string($v/product),",result:",string($v/@result))
      }
  </technicians>
};
<result>
  {local:sorted_technicnian_passed()}
</result>
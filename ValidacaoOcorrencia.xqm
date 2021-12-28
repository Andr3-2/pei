module namespace page = 'http://estg.ipp.pt/lista.xsd';

declare default element namespace 'http://estg.ipp.pt/lista.xsd';

declare %updating  %rest:path("add")
  %rest:POST("{$xml}")
  %rest:consumes('application/xml')
function page:add($xml as item())
{
  let $xsd:= "lista.xsd"
  return validate:xsd($xml, $xsd),
   update:output("Insert successful."), db:add("agendamento", $xml, "agendamento.xml")
   
};
import module namespace owl_tc = "owl_tc" at "owl_testingCase.xqy";

declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";

declare namespace owl="http://www.w3.org/2002/07/owl#";

declare namespace rdfs="http://www.w3.org/2000/01/rdf-schema#";

for $eachNamedIndividual in db:open("rdfOntology")/rdf:RDF/owl:NamedIndividual 
return   
   if ($eachNamedIndividual/rdf:type) then 
      for $nodeAux in $eachNamedIndividual/rdf:type return 
         insert node <xs:enumeration value = "{substring-after(data($eachNamedIndividual/@rdf:about),'#')}"></xs:enumeration> 
         into db:attribute("XMLSchema", concat(substring-after(data($nodeAux/@rdf:resource),'#'),"Type"), "name")/../*
   else ()
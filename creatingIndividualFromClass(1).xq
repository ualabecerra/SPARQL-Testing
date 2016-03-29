import module namespace owl_tc = "owl_tc" at "owl_testingCase.xqy";

declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";

declare namespace owl="http://www.w3.org/2002/07/owl#";

declare namespace rdfs="http://www.w3.org/2000/01/rdf-schema#";

(let $options := 
  <options>
  <ftindex value='true'/>
  <textindex value='true'/>
  <attrindex value='true'/>
 </options>
return
db:create("XMLSchema",( 
 <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
 { 
  (for $eachClass in db:open("rdfOntology")/rdf:RDF/owl:Class
  return 
   owl_tc:typeCreation($eachClass,"xs:string",true()))
  union(
  let $data := distinct-values(for $eachIndividual in db:open("rdfOntology")/rdf:RDF/owl:NamedIndividual/rdf:type
  return data($eachIndividual/@rdf:resource))
  for $item in $data return
    owl_tc:typeCreation($item,"xs:string",false()) 
     )
  union 
  (for $eachClass in db:open("rdfOntology")/rdf:RDF/owl:Class
  return 
   owl_tc:individualCreation($eachClass,true())) 
 } 
  </xs:schema>)
 ,"XMLSchemaIndex.xml",$options)
)
   

import module namespace owl_tc = "owl_tc" at "owl_testingCase.xqy";

declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";

declare namespace owl="http://www.w3.org/2002/07/owl#";

declare namespace rdfs="http://www.w3.org/2000/01/rdf-schema#";

for $eachProperty in db:open("rdfOntology")/rdf:RDF/owl:ObjectProperty
  return
    for $eachNode in owl_tc:propertyList($eachProperty) 
    return 
     let $newNode := owl_tc:sequenceCreation($eachProperty,true())
     return
       if ($eachNode[@name="owl:NamedIndividual"]) then
       insert node $newNode into $eachNode else ()
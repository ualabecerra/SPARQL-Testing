module namespace owl_tc = "owl_tc";

declare namespace rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#";

declare namespace owl="http://www.w3.org/2002/07/owl#";

declare namespace rdfs="http://www.w3.org/2000/01/rdf-schema#";

declare function owl_tc:typeCreation($node,$type,$flag)
{
 (<xs:simpleType name="{if ($flag) then concat(substring-after(data($node/@rdf:about),'#'),"Type")
  else (substring-after($node,'#'))}">
  <xs:restriction base="{$type}">
  <xs:enumeration value="{if ($flag) then 'default' else (substring-after($node,'#'))}"/>   
  </xs:restriction>
 </xs:simpleType>)
 union(if ($flag and $node/rdfs:subClassOf) 
      then let $subName := distinct-values(data($node/*/@rdf:resource)) 
         return 
          if (db:attribute("rdfOntology", $subName, "rdf:about")/..)
          then ()
         else owl_tc:typeCreation(<owl:Class rdf:about='{$subName}'/>,"xs:string",true())     
 else ())
};

declare function owl_tc:individualCreation($node,$flag)
{
 <xs:element name = "owl:NamedIndividual">
 <xs:complexType>
 <xs:attribute name = "rdf:about" type="{if ($flag) then concat(substring-after(data($node/@rdf:about),'#'),"Type") else  substring-after(data($node/@rdf:about),'#')}"/>
 </xs:complexType> 
{ let $data := distinct-values
     (for $eachNamedIndividual in db:open("rdfOntology")/rdf:RDF/owl:NamedIndividual/rdf:type
      where $eachNamedIndividual/@rdf:resource = data($node/@rdf:about)
       return 
        data($node/@rdf:about)
 )
  return if (empty($data)) then () else owl_tc:sequenceCreation($data,false())
} 
</xs:element>  
union (if ($flag)
      then if ($node/rdfs:subClassOf) 
           then let $subName := distinct-values(data($node/*/@rdf:resource)) 
                return 
                if (db:attribute("rdfOntology", $subName, "rdf:about")/..)
                then ()
                else owl_tc:individualCreation(<owl:Class rdf:about='{$subName}'/>,true())     
           else ()
      else ())
};

declare function owl_tc:propertyList($eachProperty)
{
 let $subName := distinct-values(concat(substring-after(data($eachProperty/rdfs:domain/@rdf:resource),'#'),"Type"))
  return db:attribute("XMLSchema", $subName, "type")/../../..
};

declare function owl_tc:sequenceCreation($eachProperty,$flag)
{
  <xs:sequence>
   <xs:element name = '{if ($flag) then substring-after(data($eachProperty/@rdf:about),'#') 
   else substring-after($eachProperty,'#') }'>
    <xs:complexType>
     <xs:attribute name = "{if ($flag) then 'rdf:about' else 'rdf:type'}" 
     type="{if ($flag) then concat(substring-after(data($eachProperty/rdfs:domain/@rdf:resource),'#'),"Type")
     else substring-after($eachProperty,'#')}"/>
    </xs:complexType>
   </xs:element>
  </xs:sequence>
};


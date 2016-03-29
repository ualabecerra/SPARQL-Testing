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
db:optimize("XMLSchema",true())
)
   

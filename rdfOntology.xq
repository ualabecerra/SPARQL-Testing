<rdf:RDF xmlns="http://www.semanticweb.org/antoniobecerra/ontologies/2016/1/untitled-ontology-9#"
     xml:base="http://www.semanticweb.org/antoniobecerra/ontologies/2016/1/untitled-ontology-9"
     xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
     xmlns:owl="http://www.w3.org/2002/07/owl#"
     xmlns:xml="http://www.w3.org/XML/1998/namespace"
     xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
     xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#">
    <owl:Ontology rdf:about="http://www.semanticweb.org/antoniobecerra/ontologies/2016/1/untitled-ontology-9"/>
    
    
     ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Data properties
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    
    <!-- http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#edad -->

    <owl:DatatypeProperty rdf:about="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#edad">
        <rdfs:domain rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Persona"/>
        <rdfs:range rdf:resource="http://www.w3.org/2001/XMLSchema#integer"/>
    </owl:DatatypeProperty>
    
    

 <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Object Properties
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    
    <!-- http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#amigo -->

    <owl:ObjectProperty rdf:about="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#amigo">
        <rdfs:domain rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Persona"/>
        <rdfs:range rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Persona"/>
    </owl:ObjectProperty>


    <owl:ObjectProperty rdf:about="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#da_clase">
        <owl:inverseOf rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#recibe_de"/>
        <rdf:type rdf:resource="http://www.w3.org/2002/07/owl#FunctionalProperty"/>
        <rdf:type rdf:resource="http://www.w3.org/2002/07/owl#ReflexiveProperty"/>
        <rdfs:domain rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Profesor"/>
        <rdfs:range rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Persona"/>
    </owl:ObjectProperty>


  <!-- http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#padre -->

    <owl:ObjectProperty rdf:about="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#padre">
        <rdfs:domain rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Persona"/>
        <rdfs:range>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#padre"/>
                <owl:minQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">0</owl:minQualifiedCardinality>
                <owl:onClass rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Persona"/>
            </owl:Restriction>
        </rdfs:range>
        <rdfs:range>
            <owl:Restriction>
                <owl:onProperty rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#padre"/>
                <owl:maxQualifiedCardinality rdf:datatype="http://www.w3.org/2001/XMLSchema#nonNegativeInteger">1</owl:maxQualifiedCardinality>
                <owl:onClass rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Persona"/>
            </owl:Restriction>
        </rdfs:range>
    </owl:ObjectProperty>
    

    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Classes
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->

    


    <!-- http://www.semanticweb.org/antoniobecerra/ontologies/2016/1/untitled-ontology-9#Persona -->


    
<owl:Class rdf:about="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Animal">
   <owl:disjointWith rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Persona"/>
</owl:Class>

<owl:Class rdf:about="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Profesor">
  <rdfs:subClassOf rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Persona"/>
</owl:Class>

    <!-- 
    ///////////////////////////////////////////////////////////////////////////////////////
    //
    // Individuals
    //
    ///////////////////////////////////////////////////////////////////////////////////////
     -->


<!-- http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Antonio -->

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Antonio"/>


  <owl:NamedIndividual rdf:about="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Julio">
        <rdf:type rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Profesor"/> 
        <da_clase rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Nicolas"/>
</owl:NamedIndividual>
    
<owl:NamedIndividual rdf:about="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Luis">
  <rdf:type rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Persona"/>
  <rdf:type rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Profesor"/>
  <amigo rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Nicolas"/>
</owl:NamedIndividual>

    <owl:NamedIndividual rdf:about="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Nicolas">
        <rdf:type rdf:resource="http://www.semanticweb.org/ontologies/2016/1/Ontology1455875692753.owl#Persona"/>
    </owl:NamedIndividual>
    
</rdf:RDF>
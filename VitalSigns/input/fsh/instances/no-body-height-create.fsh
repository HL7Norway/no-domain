Instance: no-body-height-create
InstanceOf: NoDomainVitalSignsObservationBodyHeight
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.source = "HL7_Norway"
* extension.url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBodyHeightBodyPositionExtension"
* extension[=].valueCoding.code = #10904000 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Stående"
* extension[+].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension"
* extension[=].valueCodeableConcept.text = "sample confounding factor"

* status = #final

* code.coding[0] = $loinc#8302-2 "Body height"
* code.coding[+] = $sct#1153637007 "Body height"
* subject.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* subject.identifier.value = "1000807"

* effectiveDateTime = "2021-05-10"
* performer[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* performer[=].identifier.value = "889911"
* performer[+] = Reference(Organization/afa23)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "23"
* note.text = "Demo Body Height"
* valueQuantity = 156 'cm' "cm"


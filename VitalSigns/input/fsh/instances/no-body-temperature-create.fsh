Instance: no-body-temperature-create
InstanceOf: NoDomainVitalSignsObservationBodyTemp
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
* extension[0].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBodyExposure"
* extension[=].valueCoding.code = #5611000202100 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Passende p�kledning/tildekking"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationActiveHeating"
* extension[=].valueString = "active heating sample"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationDaysSinceMenstruationStart"
* extension[=].valuePositiveInt = 12
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8310-5
* code.text = "Body temperature"
* subject.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* subject.identifier.value = "1000239"
* effectiveDateTime = "2021-05-10"
* performer[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* performer[=].identifier.value = "889911"
* performer[+] = Reference(Organization/afa23)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "23"
* bodySite = $sct#34402009 "Endetarm"
* note.text = "Demo Body Temperature"
* valueQuantity = 37 'Cel' "Cel"
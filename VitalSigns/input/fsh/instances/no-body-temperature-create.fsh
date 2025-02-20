Instance: no-body-temperature-create
InstanceOf: NoDomainVitalSignsObservationBodyTemp
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
* extension[bodyExposure].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBodyExposure"
* extension[bodyExposure].valueCoding.code = #5671000202107
* extension[bodyExposure].valueCoding.system = $sct
* extension[bodyExposure].valueCoding.display = "Naken"
* extension[activeHeating].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationActiveHeating"
* extension[activeHeating].valueString = "active heating sample"
* extension[daysSinceMenstruationStart].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationDaysSinceMenstruationStart"
* extension[daysSinceMenstruationStart].valuePositiveInt = 12
* status = #final
* code.coding[0] = $loinc#8310-5 "Body temperature"
* code.coding[+] = $sct#276885007 "Core body temperature (observable entity)"
* subject.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* subject.identifier.value = "1000239"
* effectiveDateTime = "2021-05-10"
* performer[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* performer[=].identifier.value = "889911"
* performer[+] = Reference(Organization/afa23)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "23"
* bodySite.coding = $sct#34402009 "Endetarm"
* note.text = "Demo Body Temperature"
* valueQuantity = 37 'Cel' "Cel"
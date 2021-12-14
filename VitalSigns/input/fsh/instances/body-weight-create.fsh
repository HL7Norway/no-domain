Instance: body-weight-create
InstanceOf: Observation
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
* identifier.system = "http://dips.no/fhir/namingsystem/externalId"
* identifier.value = "External Id: testBWexternalId3"
* extension[0].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-clothingstateextension"
* extension[=].valueCoding = $sct#1081791000202103 "Fullt påkledd uten sko"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-confoundingfactorextension"
* extension[=].valueString = "sample confounding factor"
* status = #final
* category = $observation-category#vital-signs "vital-signs"
* code = $loinc#29463-7 "Body weight"
* subject.identifier.system = "http://dips.no/fhir/namingsystem/dips-patientid"
* subject.identifier.value = "1000807"
* encounter.identifier.system = "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid"
* encounter.identifier.value = "1002679"
* effectiveDateTime = "2021-05-10"
* performer[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* performer[=].identifier.value = "889911"
* performer[+] = Reference(Organization/afa22)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "22"
* note.text = "Demo Body Weight"
* valueQuantity = 49000 'g' "g"
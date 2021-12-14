Instance: body-temperature-create
InstanceOf: Observation
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
* identifier.system = "http://dips.no/fhir/namingsystem/externalId"
* identifier.value = "External Id: testtempexternalId4"
* extension[0].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bodyexposureextension"
* extension[=].valueCoding = $sct#5611000202100 "Passende påkledning/tildekking"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-activeheating-extension"
* extension[=].valueAnnotation.text = "active heating sample"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-dayssincemenstruationstartextension"
* extension[=].valueQuantity.value = 12
* status = #final
* category = $observation-category#vital-signs
* code = $loinc#8310-5
* code.text = "Body temperature"
* subject.identifier.system = "http://dips.no/fhir/namingsystem/dips-patientid"
* subject.identifier.value = "1000239"
* encounter.identifier.system = "http://dips.no/fhir/namingsystem/dips-omsorgsepisodeid"
* encounter.identifier.value = "1000245"
* effectiveDateTime = "2021-05-10"
* performer[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* performer[=].identifier.value = "889911"
* performer[+] = Reference(Organization/afa22)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "22"
* bodySite = $sct#34402009 "Endetarm"
* note.text = "Demo Body Temperature"
* valueQuantity = 37 'Cel' "Cel"
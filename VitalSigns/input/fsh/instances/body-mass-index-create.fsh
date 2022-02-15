Instance: body-mass-index-create
InstanceOf: Observation
Usage: #example
* extension[0].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bodymassindex-formulaExtension"
* extension[=].valueString = "sample formula"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-confoundingfactorextension"
* extension[=].valueString = "sample confounding factor"
* meta.lastUpdated = "2021-05-31T22:35:00+00:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
* identifier.system = "http://dips.no/fhir/namingsystem/externalId"
* identifier.value = "External Id: testBMIexternalId8"
* status = #final
* code = $loinc#39156-5
* category = $observation-category#vital-signs "vital-signs"
* subject = Reference(patient/cdp1000239)
* subject.identifier.system = "http://dips.no/fhir/namingsystem/dips-patientid"
* subject.identifier.value = "1000239"
* encounter = Reference(Encounter/agy1000245)
* effectiveDateTime = "2021-05-31"
* performer[0].identifier.system = "urn:oid:1.3.6.1.4.1.9038.51.1"
* performer[=].identifier.value = "27"
* performer[+].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "22"
* note.text = "Demo BMI"
* interpretation.text = "Obese"
* method = $sct#1xxxx "Automatisk registrering"
* valueQuantity = 32 'kg/m2' "kg/m2"
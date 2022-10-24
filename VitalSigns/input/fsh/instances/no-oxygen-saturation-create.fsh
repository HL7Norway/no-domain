Instance: no-oxygen-saturation-create
InstanceOf: NoDomainVitalSignsObservationOxygenSaturation
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
// * identifier.system = "http://dips.no/fhir/namingsystem/externalId"
// * identifier.value = "External Id: testOxySatexternalId5"
// * extension[0].url = "http://hl7.no/fhir/StructureDefinition/DIPSVitalSignsObservationPrePostduktal"
// * extension[=].valueCoding.code = #1541  
// * extension[=].valueCoding.system = $sct
// * extension[=].valueCoding.display = "Preduktal"
* extension[0].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationInspiredOxygen"
* extension[=].extension[0].url = "http://hl7.no/fhir/StructureDefinition/OxygenAdministrationMethod"
* extension[=].extension[=].valueString = "Oxygen administration method"
* extension[=].extension[+].url = "http://hl7.no/fhir/StructureDefinition/Flow"
* extension[=].extension[=].valueQuantity.value = 6100
* extension[=].extension[=].valueQuantity.unit = "ml/min"
* extension[=].extension[+].url = "http://hl7.no/fhir/StructureDefinition/FiO2"
* extension[=].extension[=].valueRatio.numerator.value = 21
* extension[=].extension[=].valueRatio.denominator.value = 100
* extension[=].extension[+].url = "http://hl7.no/fhir/StructureDefinition/ProsentO2"
* extension[=].extension[=].valueRatio.numerator.value = 21
* extension[=].extension[=].valueRatio.denominator.value = 100
* extension[=].extension[+].url = "http://hl7.no/fhir/StructureDefinition/OnAir"
* extension[=].extension[=].valueBoolean = true
// * extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationSpO2"
// * extension[=].valueRatio.numerator.value = 24
// * extension[=].valueRatio.denominator.value = 25
* status = #final
* category = $observation-category#vital-signs "vital-signs"
* category.text = "Vital Signs"
* code = $loinc#2708-6 "Pulse oximeter (physical object)"
* subject = Reference(Patient/cdp1000239)
* subject.identifier.system = "http://dips.no/fhir/namingsystem/dips-patientid"
* subject.identifier.value = "1000239"
* encounter = Reference(Encounter/agy1000245)
* effectiveDateTime = "2021-05-10"
* performer[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* performer[=].identifier.value = "889911"
* performer[+] = Reference(Organization/afa22)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "22"
* bodySite.text = "Demo pulse oxymetri bodysite"
* note.text = "Demo pulse oxymetri"
// * valueQuantity[numerator].id = "numerator-oxygen"
// * valueQuantity[denominator].id = "denominator-oxygen"
// * valueQuantity[numerator].value = 24
// * valueQuantity[denominator].value = 25
// * valueQuantity[numerator].unit = #%
// * valueQuantity[denominator].unit = #%
// * component[0].code = $sct#1104301000000104 "NEWS2 (National Early Warning Score 2) - respiration rate score"
// * component[=].code.coding.code = #1104301000000104
// * component[=].code.coding.version = "http://snomed.info/sct/45991000052106/version/20210531"
// * component[=].code.coding.system = $sct
// * value[x][valueRatio].numerator.value = 3
// * value[x][valueRatio].denominator.value = 4
// * value[x][].numerator.value = 3
// * value[x].denominator.value = 4
// * valueRatio.numerator.value = 3
// * valueRatio.denominator.value = 4
* valueQuantity.value = 24
* valueQuantity.unit = #%

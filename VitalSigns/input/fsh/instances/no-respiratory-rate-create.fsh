Instance: no-respiratory-rate-create
InstanceOf: NoDomainVitalSignsObservationRespirationRate
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
// * identifier.system = "http://dips.no/fhir/namingsystem/externalId"
// * identifier.value = "External Id: testresprateExternalId7"
* extension[0].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationRateBodyPosition"
* extension[=].valueCoding.code = #10904000 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Stående/Oppreist"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationRegularity"
* extension[=].valueCoding.code = #276888009 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Regelmessig"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationRespirationDepth"
* extension[=].valueCoding.code = #301284009
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Normal"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationClinicalDescription"
* extension[=].valueAnnotation.text = "Description of Respiration"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationSpontaneousBreathing"
* extension[=].valueCoding.code = #241700002
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Tilstede"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationInspiredOxygen"
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
* status = #final
* code = $loinc#9279-1 "Respiratory rate"
* category = $observation-category#vital-signs "vital-signs"
* subject = Reference(Patient/cdp1000239)
* subject.identifier.system = "http://dips.no/fhir/namingsystem/dips-patientid"
* subject.identifier.value = "1000239"
* encounter = Reference(Encounter/agy1000245)
* effectiveDateTime = "2021-05-10"
* performer[0] = Reference(Practitioner/agb27)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.51.1"
* performer[=].identifier.value = "27"
* performer[+] = Reference(Organization/afa22)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "22"
* interpretation.text = "Clinical interpretation of Respiration"
* note.text = "Demo Respiration"
* valueQuantity = 14 '/min' "/min"


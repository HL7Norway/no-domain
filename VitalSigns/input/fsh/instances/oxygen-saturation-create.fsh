Instance: oxygen-saturation-create
InstanceOf: Observation
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
* identifier.system = "http://dips.no/fhir/namingsystem/externalId"
* identifier.value = "External Id: testOxySatexternalId5"
* extension[0].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-levelofexertionextension"
* extension[=].valueCoding = $sct#154h "Hvile"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/NoDomainVitalSignsObservationPrePostduktalExtension"
* extension[=].valueCoding = $sct#154d "Post-ductal"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-inspiredoxygenextension"
* extension[=].extension[0].url = "http://dips.no/fhir/StructureDefinition/OxygenAdministrationMethodExtension"
* extension[=].extension[=].valueString = "Oxygen administration method"
* extension[=].extension[+].url = "http://dips.no/fhir/StructureDefinition/FlowExtension"
* extension[=].extension[=].valueQuantity.value = 6100
* extension[=].extension[=].valueQuantity.unit = "ml/min"
* extension[=].extension[+].url = "http://dips.no/fhir/StructureDefinition/FiO2Extension"
* extension[=].extension[=].valueRatio.numerator.value = 21
* extension[=].extension[=].valueRatio.denominator.value = 100
* extension[=].extension[+].url = "http://dips.no/fhir/StructureDefinition/ProsentO2Extension"
* extension[=].extension[=].valueRatio.numerator.value = 21
* extension[=].extension[=].valueRatio.denominator.value = 100
* status = #final
* category = $observation-category#vital-signs "vital-signs"
* category.text = "Vital Signs"
* code = $loinc#2708-6 "Pulse oximeter (physical object)"
* subject = Reference(patient/cdp1000239)
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
* valueRatio.numerator.value = 24
* valueRatio.denominator.value = 25
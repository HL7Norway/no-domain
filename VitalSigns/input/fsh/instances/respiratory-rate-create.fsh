Instance: respiratory-rate-create
InstanceOf: Observation
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
* identifier.system = "http://dips.no/fhir/namingsystem/externalId"
* identifier.value = "External Id: testresprateExternalId7"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/no-domain-vitalsignsobservation-respirationrate-bodypositionextension"
* extension[=].valueCoding = $sct#10904000 "Stående/Oppreist"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-respirationregularityextension"
* extension[=].valueCoding = $sct#276888009 "Regelmessig"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation--respirationdepthextension"
* extension[=].valueCoding = $sct#301284009 "Normal"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-clinicaldescriptionextension"
* extension[=].valueAnnotation.text = "Description of Respiration"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-spontaneousbreathingextension"
* extension[=].valueCoding = $sct#241700002 "Tilstede"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-levelofexertionextension"
* extension[=].valueCoding = $sct#251894003 "Level of Exertion (attribute)"
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
* code = $loinc#9279-1 "Respiratory rate"
* category = $observation-category#vital-signs "vital-signs"
* subject = Reference(patient/cdp1000239)
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
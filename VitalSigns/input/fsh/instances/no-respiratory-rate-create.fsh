Instance: no-respiratory-rate-create
InstanceOf: NoDomainVitalSignsObservationRespirationRate
Usage: #example
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "HL7_Norway"
* extension[0].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsRespirationRateBodyPositionExtension"
* extension[=].valueCoding.code = #10904000 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "oppreist stilling"
* extension[+].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsRespirationRegularityExtension"
* extension[=].valueCoding.code = #276888009 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Regelmessig"
* extension[+].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsRespirationDepthExtension"
* extension[=].valueCoding.code = #301284009
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Normal"
* extension[+].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsClinicalDescriptionExtension"
* extension[=].valueAnnotation.text = "Description of Respiration"
* extension[+].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsSpontaneousBreathingExtension"
* extension[=].valueCoding.code = #241700002
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Tilstede"
* extension[+].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension"
* extension[=].extension[0].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFlowExtension"
* extension[=].extension[=].valueQuantity.value = 6100
* extension[=].extension[=].valueQuantity.unit = "ml/min"
* extension[=].extension[+].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFiO2Extension"
* extension[=].extension[=].valueRatio.numerator.value = 21
* extension[=].extension[=].valueRatio.denominator.value = 100
* extension[=].extension[+].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPercentO2Extension"
* extension[=].extension[=].valueRatio.numerator.value = 21
* extension[=].extension[=].valueRatio.denominator.value = 100
* extension[=].extension[+].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsOnAirExtension"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsMethodofOxygenDeliveryExtension"
* extension[=].extension[=].valueString = "Maske"
* extension[+].url = "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension"
* extension[=].valueCodeableConcept.text = "sample confounding factor"
* status = #final
* code.coding[0] = $loinc#9279-1 "Respiratory rate"
* code.coding[+] = $sct#271625008 "Rate of spontaneous respiration (observable entity)"
* subject = Reference(Patient/cdp1000240)
* subject.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* subject.identifier.value = "1000240"
* effectiveDateTime = "2021-05-10"
* performer[0] = Reference(PractitionerRole/agb30)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.51.1"
* performer[=].identifier.value = "30"
* performer[+] = Reference(Organization/afa23)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "23"
* interpretation.text = "Clinical interpretation of Respiration"
* note.text = "Demo Respiration"
* valueQuantity = 14 '/min' "/min"


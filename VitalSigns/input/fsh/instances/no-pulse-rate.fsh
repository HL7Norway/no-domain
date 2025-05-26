Instance: no-pulse-rate
InstanceOf: NoDomainVitalSignsObservationPulse
Usage: #example
* extension[0].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsPulseRhythmExtension"
* extension[=].valueCoding.code = #271636001 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Regelmessig"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension"
* extension[=].valueCodeableConcept.text = "sample confounding factor"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsPulseRhythmIrregularityExtension"
* extension[=].valueCoding.code = #271638000 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Regelmessig uregelmessig"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsClinicalDescriptionExtension"
* extension[=].valueAnnotation.text = "Clinical description sample"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsHeartRatePulseBodyPositionExtension"
* extension[=].valueCoding.code = #33586001 
* extension[=].valueCoding.system = $sct
* extension[=].valueCoding.display = "Sittende"
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "HL7_Norway"
* status = #final
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(Patient/cdp1000240)
* subject.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* subject.identifier.value = "1000240"
* effectiveDateTime = "2021-05-10"
* performer[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* performer[=].identifier.value = "889911"
* performer[+] = Reference(Organization/afa23)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "23"
* bodySite = $sct#29707007 "Tå"
* note.text = "Demo Pulse Rate"
* valueQuantity = 61 '/min' "/min"


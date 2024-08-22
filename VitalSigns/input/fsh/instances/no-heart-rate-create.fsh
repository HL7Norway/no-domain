Instance: no-heart-rate-create
InstanceOf: NoDomainVitalSignsObservationHeartRate
Usage: #example

* extension[confoundingFactor].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationConfoundingFactor"
* extension[confoundingFactor].valueCodeableConcept.text = "sample confounding factor"
* extension[heartRhythmIrregularity].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRhythmIrregularity"
* extension[heartRhythmIrregularity].valueCoding.code = #248652003 
* extension[heartRhythmIrregularity].valueCoding.system = $sct
* extension[heartRhythmIrregularity].valueCoding.display = "Regelmessig uregelmessig" 
* extension[clinicalDescription].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationClinicalDescription"
* extension[clinicalDescription].valueAnnotation.text = "Clinical description sample"
* extension[BodyPosition].url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRatePulseBodyPosition"
* extension[BodyPosition].valueCoding.code = #33586001 
* extension[BodyPosition].valueCoding.system = $sct
* extension[BodyPosition].valueCoding.display = "Sittende"
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
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
* bodySite.coding = $sct#80891009 "Hjerte"
* note.text = "Demo heart rate"
* valueQuantity = 61 '/min' "/min"


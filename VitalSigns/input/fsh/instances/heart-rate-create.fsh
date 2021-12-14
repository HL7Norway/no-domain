Instance: heart-rate-create
InstanceOf: Observation
Usage: #example
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/no-domain-vitalsignsobservation-heartrhythmextension"
* extension[=].valueCoding = $sct#271636001 "Pulse regular (finding)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/no-domain-vitalsignsobservation-heartrhythmIrregularityextension"
* extension[=].valueCoding = $sct#271638000 "Heart regularly irregular (finding)"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-characterofheartrateextension"
* extension[=].valueAnnotation.text = "character sample"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-clinicaldescriptionextension"
* extension[=].valueAnnotation.text = "Clinical description sample"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/no-domain-vitalsignsobservation-heartrate-bodypositionextension"
* extension[=].valueCoding = $sct#33586001 "Sitting position"
* extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-levelofexertionextension"
* extension[=].valueCoding = $sct#251894003 "Level of Exertion (attribute)"
* meta.lastUpdated = "2014-01-30T22:35:23+11:00"
* meta.versionId = "0"
* meta.source = "META_VISION"
* identifier.system = "http://dips.no/fhir/namingsystem/externalId"
* identifier.value = "External Id: testpulseExternalId6"
* status = #final
* code = $loinc#8867-4 "Heart rate (observable entity)"
* category = $observation-category#vital-signs
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
* method = $sct#129434008 "Palpation"
* bodySite = $sct#7569003 "Finger structure (body structure)"
* note.text = "Demo heart rate"
* valueQuantity = 61 '/min' "/min"
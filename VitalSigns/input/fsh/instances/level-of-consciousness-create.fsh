Instance: level-of-consciousness-create
InstanceOf: Observation
Usage: #example
* meta.versionId = "0"
* meta.lastUpdated = "2014-01-30T11:35:23+00:00"
* meta.source = "META_VISION"
* identifier.system = "http://dips.no/fhir/namingsystem/externalId"
* identifier.value = "External Id: testLCexternalId5"
* status = #final
* category = $observation-category#survey "Survey"
* code = $sct#1104441000000107 "The observation of the individual's level of consciousness"
* subject = Reference(Patient/cdp1000807)
* subject.identifier.system = "http://dips.no/fhir/namingsystem/dips-patientid"
* subject.identifier.value = "1000807"
* effectiveDateTime = "2021-10-23"
* performer[0] = Reference(Organization/afa22)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.70.3"
* performer[=].identifier.value = "22"
* performer[+] = Reference(PractitionerRole/agb103)
* performer[=].identifier.system = "urn:oid:1.3.6.1.4.1.9038.51.1"
* performer[=].identifier.value = "103"
* valueCodeableConcept = $code#5 "Våken"
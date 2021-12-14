Instance: DIPSVitalSignsObservation
InstanceOf: CapabilityStatement
Title: "DIPS implementation of Vital Signs - Capability Statement"
Description: "DIPS implementation of Vital Signs - Capability Statement"
Usage: #definition
* status = #active
* experimental = true
* date = "2019-09-26"
* kind = #instance
* fhirVersion = #4.0.0
* format[0] = #xml
* format[+] = #json
* rest.mode = #server
* rest.documentation = "This describes the capabilities of the vital signs supported by DIPS."
* rest.resource.type = #Observation
* rest.resource.profile = "DIPSVitalSignsObservation"
* rest.resource.supportedProfile[0] = "DipsVitalSignsObservationBloodpressure"
* rest.resource.supportedProfile[+] = "DipsVitalSignsObservationBodyHeight"
* rest.resource.supportedProfile[+] = "DipsBodyTemp"
* rest.resource.supportedProfile[+] = "DipsBodyWeight"
* rest.resource.supportedProfile[+] = "DipsVitalSignsObservationHeartRate"
* rest.resource.supportedProfile[+] = "DipsVitalSignsObservationOxygenSaturation"
* rest.resource.supportedProfile[+] = "DipsResprate"
* rest.resource.supportedProfile[+] = "NoObservationBodyHeight"
* rest.resource.supportedProfile[+] = "NoObservationBodyTemp"
* rest.resource.supportedProfile[+] = "NoObservationBodyWeight"
* rest.resource.supportedProfile[+] = "NoObservationbp"
* rest.resource.supportedProfile[+] = "NoObservationHeartRate"
* rest.resource.supportedProfile[+] = "NoObservationOxygenSat"
* rest.resource.supportedProfile[+] = "NoObservationResprate"
* rest.resource.interaction[0].code = #create
* rest.resource.interaction[=].documentation = "Register an observation on a specific patient in DIPS.\r\n                       It is not  possible to register cancer and person injury\r\n                       diagnoses via this interface."
* rest.resource.interaction[+].code = #read
* rest.resource.interaction[=].documentation = "Read an observation by fhir id returned by the service"
* rest.resource.interaction[+].code = #search-type
* rest.resource.interaction[=].documentation = "Fetch observations by patient, fhirid, code, externalfhirid and effectivedatetime"
* rest.resource.searchParam[0].name = "fhirid"
* rest.resource.searchParam[=].type = #reference
* rest.resource.searchParam[=].documentation = "Dips fhir id"
* rest.resource.searchParam[+].name = "externalfhirid"
* rest.resource.searchParam[=].type = #reference
* rest.resource.searchParam[=].documentation = "external fhir id"
* rest.resource.searchParam[+].name = "code"
* rest.resource.searchParam[=].type = #reference
* rest.resource.searchParam[=].documentation = "Loinc code for type of observation eg: For blood presure 'code=85354-9'"
* rest.resource.searchParam[+].name = "patient"
* rest.resource.searchParam[=].type = #reference
* rest.resource.searchParam[=].documentation = "Supports patient logical Id or SSN."
* rest.resource.searchParam[+].name = "patient.Identifier"
* rest.resource.searchParam[=].type = #token
* rest.resource.searchParam[=].documentation = "Dips patient id or national id.Supported systems are urn:oid:2.16.578.1.12.4.1.4.1,urn:oid:2.16.578.1.12.4.1.4.2 or urn:oid:2.16.578.1.12.4.1.4.3 "
* rest.resource.searchParam[+].name = "effectivedatetime"
* rest.resource.searchParam[=].type = #reference
* rest.resource.searchParam[=].documentation = "Effective date time. Supports single date or date range"
* rest.interaction[0].code = #transaction
* rest.interaction[+].code = #history-system
* rest.compartment = "http://hl7.org/fhir/CompartmentDefinition/patient"
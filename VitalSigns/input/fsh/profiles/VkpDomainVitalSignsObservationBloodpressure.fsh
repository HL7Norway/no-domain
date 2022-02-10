Profile: VkpVitalSignsObservationBloodpressure
Parent: NoDomainVitalSignsObservationBloodpressure
Id: VkpVitalSignsObservationBloodpressure
Title: "Vkp VitalSigns Observation - Blood pressure"
Description: "Profile for blood pressure in VKP."
* ^url = "http://hl7.no/fhir/StructureDefinition/vkp-vitalsignsobservation-bloodpressure"
* ^version = "0.1.0000"
* ^status = #draft
* ^date = "2022-02-10"
* ^purpose = "To record the systemic arterial blood pressure of an individual."
* . ^short = "FHIR Blood Pressure Profile VKP"
* subject 1.. MS
* subject only Reference(Patient or $no-basis-Patient)
* subject ^definition = "Reference to the patient that is subject to the encounter, identified by Norwegian national id number (Fødselsnummer or DNR).\r\n\r\nA link to a resource representing the person or the group to whom the medication will be given.\r\n\r\nVKP always references a Patient Resource using a norwegian national id number (Fødselsnummer or DNR) in a logical identifier in the subject.identifier element.\r\nThe Name of the patient should be given in the subject.display element.\r\n\r\nExample:\r\n~~~~\r\n\"subject\":{\r\n   \"identifier\":{\r\n      \"system\":\"urn:oid:2.16.578.1.12.4.1.4.1\",\r\n      \"value\":\"05073500186\"\r\n     },\r\n     \"display\":\"Ærlend Sørgård\"\r\n}\r\n~~~~"
* subject.identifier MS
* subject.identifier.system from http://hl7.no/fhir/ValueSet/vkp-subject-identifier-systems (required)
* subject.identifier.system MS
* subject.identifier.value MS
* subject.display MS
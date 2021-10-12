Profile: NoDomainVitalSignsObservationSubjectReference
Parent: Reference
Id: NoDomainVitalSignsObservationSubjectReference
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-subjectreference"
* ^status = #draft
* type = "Patient" (exactly)
* type ^short = "Patient"
* type ^definition = "\"Patient\" is a reference to http://hl7.org/fhir/StructureDefinition/Patient."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    FNR 0..1 and
    DNR 0..1 and
    HNR 0..1 and
    FHN 0..1
* identifier[FNR] ^short = "Identification of the Norwegian FNR"
* identifier[FNR] ^definition = "Fødselsnummer for the patient. Fødselsnummer as one of the possible patient identifier, should at least be sent unless there is a reason not to. Reasons for not sending the Fødselsnummer include but are not limited to, research and apps without a contract for processing data.\r\n\r\nMultiple FNR can exist for a person. If several FNR is provided the time period that each identifier is valid should be provided. No information about period is required when only one FNR is provided."
* identifier[FNR].use ..0
* identifier[FNR].type ..0
* identifier[FNR].system 1..
* identifier[FNR].system = "urn:oid:2.16.578.1.12.4.1.4.1" (exactly)
* identifier[FNR].value 1..
* identifier[FNR].value ^short = "The Norwegian Fødselsnummer"
* identifier[FNR].period ..0
* identifier[FNR].assigner ..0
* identifier[DNR] ^short = "The identification of the D-nummer"
* identifier[DNR] ^definition = "The D-nummer of the patient. (assigned by the norwegian Skatteetaten)"
* identifier[DNR].use ..0
* identifier[DNR].type ..0
* identifier[DNR].system 1..
* identifier[DNR].system = "urn:oid:2.16.578.1.12.4.1.4.2" (exactly)
* identifier[DNR].system ^short = "The identification of the Norwegian D-nummer"
* identifier[DNR].system ^definition = "The identification of the Norwegian D-nummer"
* identifier[DNR].value 1..
* identifier[DNR].value ^definition = "The actual Norwegian D-nummer"
* identifier[DNR].period ..0
* identifier[DNR].assigner ..0
* identifier[HNR] ^short = "A locally assigned H-nummer"
* identifier[HNR] ^definition = "A locally assigned H-nummer. If this identifier is used, information about the assigner is mandatory."
* identifier[HNR].use ..0
* identifier[HNR].type ..0
* identifier[HNR].system = "HNR" (exactly)
* identifier[HNR].value ^definition = "The actual Hjelpenummer.\r\n\r\nThe portion of the identifier typically relevant to the user and which is unique within the context of the system."
* identifier[HNR].period ..0
* identifier[HNR].assigner ^definition = "Assigner is mandatory for localy assigne Hjelpenummer.\r\n\r\nOrganization that issued/manages the identifier."
* identifier[FHN].system 1..
* identifier[FHN].system = "urn:oid:2.16.578.1.12.4.1.4.3" (exactly)
* identifier[FHN].system ^short = "Identification of the Norwegian felles hjelpenummer"
* identifier[FHN].system ^definition = "Norwegian felles hjelpenummer"
* identifier[FHN].value 1..
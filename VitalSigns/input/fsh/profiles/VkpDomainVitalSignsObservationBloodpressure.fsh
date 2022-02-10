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
* subject 1..
* subject.reference ^mustSupport = false
* subject.identifier 1..
* subject.identifier ^slicing.discriminator.type = #value
* subject.identifier ^slicing.discriminator.path = "system"
* subject.identifier ^slicing.rules = #closed
* subject.identifier ^definition = "VKP expects a FNR for the patient given using system and value elements, as well as the name in the subject.display element.\r\n\r\nAn identifier for the other resource. This is used when there is no way to reference the other resource directly, either because the entity is not available through a FHIR server, or because there is no way for the author of the resource to convert a known identifier to an actual location. There is no requirement that a Reference.identifier point to something that is actually exposed as a FHIR instance, but it SHALL point to a business concept that would be expected to be exposed as a FHIR instance, and that instance would need to be of a FHIR resource type allowed by the reference."
* subject.identifier ^comment = "VKP expects a FNR, DNR or Felles hjelpenummer for the patient that is subject of the medicationdispense. The subject should be identified using system and value elements, as well as the name of the patient in the subject.display element.\r\n\r\nWhen an identifier is provided in place of a reference, any system processing the reference will only be able to resolve the identifier to a reference if it understands the business context in which the identifier is used. Sometimes this is global (e.g. a national identifier) but often it is not. For this reason, none of the useful mechanisms described for working with references (e.g. chaining, includes) are possible, nor should servers be expected to be able resolve the reference. Servers may accept an identifier based reference untouched, resolve it, and/or reject it - see CapabilityStatement.rest.resource.referencePolicy. \n\nWhen both an identifier and a literal reference are provided, the literal reference is preferred. Applications processing the resource are allowed - but not required - to check that the identifier matches the literal reference\n\nApplications converting a logical reference to a literal reference may choose to leave the logical reference present, or remove it."
* subject.identifier ^mustSupport = false
* subject.identifier[FNR] ^sliceName = "FNR"
* subject.identifier[FNR] ^short = "Norwegian FNR"
* subject.identifier[FNR] ^definition = "Fødselsnummer for the patient. Fødselsnummer as one of the possible patient identifier, should at least be sent unless there is a reason not to. Reasons for not sending the Fødselsnummer include but are not limited to, research and apps without a contract for processing data.\r\n\r\nMultiple FNR can exist for a person. If several FNR is provided the time period that each identifier is valid should be provided. No information about period is required when only one FNR is provided."
* subject.identifier[FNR] ^alias = "Fødselsnummer"
* subject.identifier[FNR].system 1..
* subject.identifier[FNR].system = "urn:oid:2.16.578.1.12.4.1.4.1" (exactly)
* subject.identifier[FNR].system ^short = "Identification of the Norwegian FNR"
* subject.identifier[FNR].system ^definition = "Identifies that this is a Norwegian Fødselsnummer"
* subject.identifier[FNR].value 1..
* subject.identifier[FNR].value ^short = "The actual Fødselsnumme"
* subject.identifier[FNR].value ^definition = "The Norwegian Fødselsnummer"
* subject.identifier[FNR].value ^alias = "Fødselsnummer"
* subject.identifier[DNR] ^sliceName = "DNR"
* subject.identifier[DNR] ^short = "The D-nummer of the patient"
* subject.identifier[DNR] ^definition = "The D-nummer of the patient. (assigned by the norwegian Skatteetaten)"
* subject.identifier[DNR] ^alias = "D-nummer"
* subject.identifier[DNR].system 1..
* subject.identifier[DNR].system = "urn:oid:2.16.578.1.12.4.1.4.2" (exactly)
* subject.identifier[DNR].system ^short = "The identification of the D-nummer"
* subject.identifier[DNR].system ^definition = "The identification of the Norwegian D-nummer"
* subject.identifier[DNR].value 1..
* subject.identifier[DNR].value ^short = "The actual D-numme"
* subject.identifier[DNR].value ^definition = "The actual Norwegian D-nummer"
* subject.identifier[FHN] ^sliceName = "FHN"
* subject.identifier[FHN] ^short = "Felles hjelpenummer used for the patient"
* subject.identifier[FHN] ^definition = "Felles hjelpenummer for the patient. Felles hjelpenummer as one of the possible patient identification numbers. The norwegian Felles hjelpenummer shoud only be used when the Fødselsnummer og D-number is unknown."
* subject.identifier[FHN] ^alias = "Felles hjelpenummer"
* subject.identifier[FHN].system 1..
* subject.identifier[FHN].system = "urn:oid:2.16.578.1.12.4.1.4.3" (exactly)
* subject.identifier[FHN].system ^short = "Identification of the Norwegian felles hjelpenumme"
* subject.identifier[FHN].system ^definition = "Identification of the Norwegian felles hjelpenummer system"
* subject.identifier[FHN].value 1..
* subject.identifier[FHN].value ^short = "The actual Hjelpenummer"
* subject.identifier[FHN].value ^definition = "The actual Norwegian Hjelpenummer"
* subject.display MS
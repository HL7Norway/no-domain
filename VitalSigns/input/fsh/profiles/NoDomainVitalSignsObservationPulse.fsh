Profile: NoDomainVitalSignsObservationPulse
Parent: $vitalsigns
Id: NoDomainVitalSignsObservationPulse
Title: "NO Domain VitalSigns Observation - Pulse"
Description: "Base profile for Norwegian Vital Signs Observation Pulse information. The rate and associated attributes for a pulse."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationPulse"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^purpose = "To record details about the rate and associated attributes for a pulse"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoDomainVitalSignsObservationHeartRhythm  named heartRythm 0..1 and
    NoDomainVitalSignsObservationClinicalDescription  named clinicalDescription 0..1 and
    NoDomainVitalSignsObservationCharacterOfHeartRate  named characterOfHeartrate 0..1 and
    NoDomainVitalSignsObservationHeartRateBodyPosition  named BodyPosition 0..1 and
    NoDomainVitalSignsObservationHeartRhythmIrregularity  named heartRythmIrregularity 0..1
* extension[heartRythm] ^short = "Regularity of the pulse or heart beat."
* extension[heartRythm] ^definition = "Regularity of the pulse or heart beat."
* extension[clinicalDescription] ^short = "Narrative description about the pulse or heart beat."
* extension[clinicalDescription] ^definition = "Narrative description about the pulse or heart beat."
* extension[characterOfHeartrate] ^short = "Description of the character of the pulse or heart beat."
* extension[characterOfHeartrate] ^definition = "Description of the character of the pulse or heart beat."
* extension[BodyPosition] ^short = "The body position of the subject during the observation."
* extension[BodyPosition] ^definition = "The body position of the subject during the observation."
* extension[heartRythmIrregularity] ^short = "More specific pattern of an irregular pulse or heart beat."
* extension[heartRythmIrregularity] ^definition = "More specific pattern of an irregular pulse or heart beat."
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains PulseCode 1..1
* code.coding[PulseCode].system 1..
* code.coding[PulseCode].system = "http://snomed.info/sct" (exactly)
* code.coding[PulseCode].code 1..
* code.coding[PulseCode].code = #78564009 (exactly)
* subject only Reference(Patient or $no-basis-Patient)
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[organization] only Reference(Organization or $no-basis-Organization)
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* valueQuantity only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.code 1..
* bodySite from NoDomainVitalSignsObservationHeartRateBodySite (required)
* bodySite.coding from NoDomainVitalSignsObservationHeartRateBodySite (required)

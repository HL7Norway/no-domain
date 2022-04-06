Profile: NoDomainVSOPulse
Parent: $vitalsigns
Id: NoDomainVSOPulse
Title: "NO Domain VitalSigns Observation - Pulse"
Description: "Base profile for Norwegian Vital Signs Observation Pulse information. The rate and associated attributes for a pulse."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vso-pulse"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^purpose = "To record details about the rate and associated attributes for a pulse"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoDomainVSOLevelOfExertionExtension named levelOfExertion 0..1 and
    NoDomainVSOHeartRhythmExtension named heartRythm 0..1 and
    NoDomainVSOClinicalDescriptionExtension named clinicalDescription 0..1 and
    NoDomainVSOCharacterOfHeartRateExtension named characterOfHeartrate 0..1 and
    NoDomainVSOHeartRateBodyPositionExtension named BodyPosition 0..1 and
    NoDomainVSOHeartRhythmExtension named heartRythmIrregularity 0..1
* extension[levelOfExertion] ^short = "Details about physical exertion being undertaken during the examination."
* extension[levelOfExertion] ^definition = "Details about physical exertion being undertaken during the examination."
//* extension[heartRythm] from NoDomainVSOHeartRhythmValueSet (required)
* extension[heartRythm] ^short = "Regularity of the pulse or heart beat."
* extension[heartRythm] ^definition = "Regularity of the pulse or heart beat."
* extension[clinicalDescription] ^short = "Narrative description about the pulse or heart beat."
* extension[clinicalDescription] ^definition = "Narrative description about the pulse or heart beat."
* extension[characterOfHeartrate] ^short = "Description of the character of the pulse or heart beat."
* extension[characterOfHeartrate] ^definition = "Description of the character of the pulse or heart beat."
//* extension[BodyPosition] from NoDomainVSOHeartRateBodyPositionValueSet (required)
* extension[BodyPosition] ^short = "The body position of the subject during the observation."
* extension[BodyPosition] ^definition = "The body position of the subject during the observation."
//* extension[heartRythmIrregularity] from NoDomainVSOHeartRhythmValueSet (required)
* extension[heartRythmIrregularity] ^short = "More specific pattern of an irregular pulse or heart beat."
* extension[heartRythmIrregularity] ^definition = "More specific pattern of an irregular pulse or heart beat."
// * category ^slicing.discriminator.type = #value
// * category ^slicing.discriminator.path = "coding.system"
// * category ^slicing.rules = #open
// * category.coding ..1
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains PulseCode 1..1
* code.coding[PulseCode].system 1..
* code.coding[PulseCode].system = "http://snomed.info/sct" (exactly)
* code.coding[PulseCode].code 1..
* code.coding[PulseCode].code = #xxxxx (exactly)
* subject only Reference(Patient or $no-basis-Patient)
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    Organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
//* performer[Organization] only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or $no-basis-Organization)
* performer[Organization] only Reference(Organization or $no-basis-Organization)
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* valueQuantity only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.code 1..
* bodySite from NoDomainVSOHeartRateBodySiteValueSet (required)
* bodySite.coding from NoDomainVSOHeartRateBodySiteValueSet (required)
* method from NoDomainVSOHeartRateMeasurementMethodValueSet (required)
* method.coding from NoDomainVSOHeartRateMeasurementMethodValueSet (required)
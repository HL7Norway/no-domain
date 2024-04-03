Profile: NoDomainVitalSignsObservationBodyHeight
Parent: $bodyheight
Id: NoDomainVitalSignsObservationBodyHeight
Title: "NO Domain VitalSigns Observation - Body Height"
Description: """Base profile for Norwegian Vital Signs Observation Body Height information.  
To be used for recording the measured height or body length of an individual at any point in time."""
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBodyHeight"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^purpose = "To record the length of the body from crown of head to sole of foot of an individual - either measured or approximated, and either in a standing or recumbent position."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains NoDomainVitalSignsObservationBodyHeightBodyPosition  named bodyPosition 0..1
* extension[bodyPosition] ^short = "Position of individual when measured."
* extension[bodyPosition] ^definition = "Position of individual when measured."
* subject only Reference(Patient or $no-basis-Patient)
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole  or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[organization] only Reference(Organization or $no-basis-Organization)
* code.coding contains BodyHeightSnomedCode 0..1
* code.coding[BodyHeightSnomedCode] ^definition = "body Height Snomed Code"
* code.coding[BodyHeightSnomedCode] ^short = "body Height Snomed Code"
* code.coding[BodyHeightSnomedCode].system 1..1
* code.coding[BodyHeightSnomedCode].system = $sct
* code.coding[BodyHeightSnomedCode].code = #50373000
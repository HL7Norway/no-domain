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
* partOf ^comment = "To link an Observation to an Encounter use `encounter`.  See the  Notes below for guidance on referencing another Observation."
* subject only Reference(Patient or $no-basis-Patient)
* focus ^comment = "Typically, an observation is made about the subject - a patient, or group of patients, location, or device - and the distinction between the subject and what is directly measured for an observation is specified in the observation code itself ( e.g., \"Blood Glucose\") and does not need to be represented separately using this element.  Use `specimen` if a reference to a specimen is required."
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the Timing datatype which allow the measurement to be tied to regular life events."
* issued ^comment = "For Observations that don’t require review and verification, it may be the same as the `lastUpdated` time of the resource itself.  For Observations that do require review and verification for certain updates, it might not be the same as the `lastUpdated` time of the resource itself due to a non-clinically significant update that doesn’t require the new version to be reviewed and verified again."
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole  or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[organization] only Reference(Organization or $no-basis-Organization)
* valueQuantity ^short = "The length of the body from crown of head to sole of foot."
* bodySite ^comment = "Only used if not implicit in code found in Observation.code.  In many systems, this may be represented as a related observation instead of an inline component."
* hasMember ^comment = "When using this element, an observation will typically have either a value or a set of related resources, although both may be present in some cases.  For a discussion on the ways Observations can assembled in groups together, see Notes below.  Note that a system may calculate results from QuestionnaireResponse into a final score and represent the score as an Observation."
* derivedFrom ^comment = "All the reference choices that are listed in this element can represent clinical observations and other measurements that may be the source for a derived value.  The most common reference will be another Observation.  For a discussion on the ways Observations can assembled in groups together, see Notes below."
* component ^comment = "For a discussion on the ways Observations can be assembled in groups together see Notes below."
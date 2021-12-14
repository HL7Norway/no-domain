Profile: NoDomainVitalSignsObservationBodyWeight
Parent: $bodyweight
Id: NoDomainVitalSignsObservationBodyWeight
Title: "NO Domain VitalSigns Observation - Body Weight"
Description: "Base profile for Norwegian Vital Signs Observation Body Weight information. To be used for recording the actual measurement of body weight, including when the individual is missing a body part due to a congenital cause or after surgical removal."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bodyweight"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^purpose = "To record the body weight of an individual - both actual and approximate."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoDomainVitalSignsObservationClothingStateExtension named clothingState 0..1 and
    NoDomainVitalSignsObservationConfoundingFactorExtension named confoundingFactor 0..1
//* extension[clothingState] from NoDomainVitalSignsObservationClothingStateValueSet (required)
* extension[clothingState] ^short = "Description of the state of dress of the person at the time of weighing."
* extension[clothingState] ^definition = "Description of the state of dress of the person at the time of weighing."
* partOf ^comment = "To link an Observation to an Encounter use `encounter`.  See the  Notes below for guidance on referencing another Observation."
* code.id ..0
* code.coding[BodyWeightCode].id ..0
* code.coding[BodyWeightCode].version ..0
* code.coding[BodyWeightCode].userSelected ..0
* code.text ..0
* subject only Reference(Patient or $no-basis-Patient)
* focus ^comment = "Typically, an observation is made about the subject - a patient, or group of patients, location, or device - and the distinction between the subject and what is directly measured for an observation is specified in the observation code itself ( e.g., \"Blood Glucose\") and does not need to be represented separately using this element.  Use `specimen` if a reference to a specimen is required.  If a code is required instead of a resource use either  `bodysite` for bodysites or the standard extension focusCode"
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the Timing datatype which allow the measurement to be tied to regular life events."
* issued ^comment = "For Observations that don’t require review and verification, it may be the same as the `lastUpdated` time of the resource itself.  For Observations that do require review and verification for certain updates, it might not be the same as the `lastUpdated` time of the resource itself due to a non-clinically significant update that doesn’t require the new version to be reviewed and verified again."
* performer 1..
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    Organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
//* performer[Organization] only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or $no-basis-Organization)
* performer[Organization] only Reference(Organization or $no-basis-Organization)
* value[x] ^slicing.rules = #open
* valueQuantity ^short = "The weight of the individual."
* valueQuantity ^definition = "The weight of the individual."
* valueQuantity.id ..0
* valueQuantity.comparator ..0
* bodySite ^comment = "Only used if not implicit in code found in Observation.code.  In many systems, this may be represented as a related observation instead of an inline component."
* hasMember ^comment = "When using this element, an observation will typically have either a value or a set of related resources, although both may be present in some cases.  For a discussion on the ways Observations can assembled in groups together, see Notes below.  Note that a system may calculate results from QuestionnaireResponse into a final score and represent the score as an Observation."
* derivedFrom ^comment = "All the reference choices that are listed in this element can represent clinical observations and other measurements that may be the source for a derived value.  The most common reference will be another Observation.  For a discussion on the ways Observations can assembled in groups together, see Notes below."
* component ^comment = "For a discussion on the ways Observations can be assembled in groups together see Notes below."
Profile: NoDomainVitalSignsObservationHeartRate
Parent: $heartrate
Id: NoDomainVitalSignsObservationHeartRate
Title: "NoDomainVitalSignsObservationHeartRate"
Description: """Basisprofile for Norwegian  VitalSigns Observation Heart Rate information.  
Use to record the presence or absence of a pulse or heart beat."""
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-heartrate"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^purpose = "Basisprofile for Norwegian  VitalSigns Observation Heart Rate information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Heart Rate."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoDomainVitalSignsObservationLevelOfExertionExtension named levelOfExertion 0..1 and
    NoDomainVitalSignsObservationHeartRhythmExtension named heartRhythm 0..1 and
    NoDomainVitalSignsObservationClinicalDescriptionExtension named clinicalDescription 0..1 and
    NoDomainVitalSignsObservationCharacterOfHeartRateExtension named characterOfHeartrate 0..1 and
    NoDomainVitalSignsObservationHeartRateBodyPositionExtension named BodyPosition 0..1 and
    NoDomainVitalSignsObservationHeartRhythmIrregularityExtension named heartRythmIrregularity 0..1
* extension[levelOfExertion] ^short = "Details about physical exertion being undertaken during the examination."
* extension[levelOfExertion] ^definition = "Details about physical exertion being undertaken during the examination."
* extension[heartRhythm] from $no-domain-vitalsignsobservation-heartrhythmvalueset (required)
* extension[heartRhythm] ^short = "Regularity of the pulse or heart beat."
* extension[heartRhythm] ^definition = "Regularity of the pulse or heart beat."
* extension[clinicalDescription] ^short = "Narrative description about the pulse or heart beat."
* extension[clinicalDescription] ^definition = "Narrative description about the pulse or heart beat."
* extension[characterOfHeartrate] ^short = "Description of the character of the pulse or heart beat."
* extension[characterOfHeartrate] ^definition = "Description of the character of the pulse or heart beat."
* extension[BodyPosition] from $no-domain-vitalsignsobservation-heartrate-bodypositionvalueset (required)
* extension[BodyPosition] ^short = "The body position of the subject during the observation."
* extension[BodyPosition] ^definition = "The body position of the subject during the observation."
* extension[heartRythmIrregularity] from $no-domain-vitalsignsobservation-heartrhythmIrregularityvalueset (required)
* extension[heartRythmIrregularity] ^short = "More specific pattern of an irregular pulse or heart beat."
* extension[heartRythmIrregularity] ^definition = "More specific pattern of an irregular pulse or heart beat."
* partOf ^comment = "To link an Observation to an Encounter use `encounter`.  See the  Notes below for guidance on referencing another Observation."
* subject only Reference(Patient or $no-basis-Patient)
* focus ^comment = "Typically, an observation is made about the subject - a patient, or group of patients, location, or device - and the distinction between the subject and what is directly measured for an observation is specified in the observation code itself ( e.g., \"Blood Glucose\") and does not need to be represented separately using this element.  Use `specimen` if a reference to a specimen is required.  If a code is required instead of a resource use either  `bodysite` for bodysites or the standard extension focusCode."
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the Timing datatype which allow the measurement to be tied to regular life events."
* performer 1..
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    Organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[Organization] only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or $no-basis-Organization)
* value[x] ^slicing.rules = #open
* valueQuantity ^short = "The rate of the pulse or heart beat, measured in beats per minute."
* valueQuantity ^definition = "The rate of the pulse or heart beat, measured in beats per minute."
* valueQuantity ^comment = "An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the Notes section below."
* bodySite from $no-domain-vitalsignsobservation-heartrate-bodysitevalueset (required)
* bodySite ^comment = "Only used if not implicit in code found in Observation.code.  In many systems, this may be represented as a related observation instead of an inline component.   \n\nIf the use case requires BodySite to be handled as a separate resource (e.g. to identify and track separately) then use the standard extension bodySite."
* bodySite.coding from $no-domain-vitalsignsobservation-heartrate-bodysitevalueset (required)
* method from $no-domain-vitalsignsobservation-heartrate-measurementmethodvalueSet (required)
* method.coding from $no-domain-vitalsignsobservation-heartrate-measurementmethodvalueSet (required)
* hasMember ^comment = "When using this element, an observation will typically have either a value or a set of related resources, although both may be present in some cases."
* derivedFrom ^comment = "All the reference choices that are listed in this element can represent clinical observations and other measurements that may be the source for a derived value.  The most common reference will be another Observation."
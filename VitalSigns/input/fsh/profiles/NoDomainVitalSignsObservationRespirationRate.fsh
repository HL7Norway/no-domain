Profile: NoDomainVitalSignsObservationRespirationRate
Parent: $resprate
Id: NoDomainVitalSignsObservationRespirationRate
Title: "NoDomainVitalSignsObservationRespirationRate"
Description: """Basisprofile for Norwegian  VitalSigns Observation Respiration Rate information.  
Use to record the observed and measured characteristics of spontaneous breathing by an individual, including respiratory rate, depth and rhythm."""
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-respirationrate"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^purpose = "Basisprofile for Norwegian  VitalSigns Observation Respiration Rate information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Respiration Rate ."
* meta.lastUpdated ^comment = "This value is always populated except when the resource is first being created. The server / resource manager sets this value; what a client provides is irrelevant. This is equivalent to the HTTP Last-Modified and SHOULD have the same value on a read interaction."
* meta.source ^definition = "A uri that identifies the source system of the resource. This provides a minimal amount of Provenance information that can be used to track or differentiate the source of information in the resource. The source may identify another FHIR server, document, message, database, etc."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoDomainVitalSignsObservationLevelOfExertionExtension named levelOfExertion 0..1 and
    NoDomainVitalSignsObservationRespirationRateBodyPositionExtension named bodyPosition 0..1 and
    NoDomainVitalSignsObservationRespirationRegularityExtension named respirationRegularity 0..1 and
    NoDomainVitalSignsObservationSpontaneousBreathingExtension named spontaneousBreathing 0..1 and
    NoDomainVitalSignsObservationClinicalDescriptionExtension named clinicalDescription 0..1 and
    NoDomainVitalSignsObservationRespirationDepthExtension named respirationDepth 0..1 and
    NoDomainVitalSignsObservationInspiredOxygenExtension named inspiredOxygen 0..1
* extension[levelOfExertion] ^short = "Details about physical exertion being undertaken during the examination."
* extension[levelOfExertion] ^definition = "Details about physical exertion being undertaken during the examination."
* extension[bodyPosition] from $no-domain-vitalsignsobservation-respirationrate-bodypositionvalueset (required)
* extension[bodyPosition] ^short = "The body position of the individual during the observation."
* extension[bodyPosition] ^definition = "The body position of the individual during the observation."
* extension[respirationRegularity] from $no-domain-vitalsignsobservation-respirationregularityvalueset (required)
* extension[respirationRegularity] ^short = "The regularity of spontaneous breathing."
* extension[respirationRegularity] ^definition = "The regularity of spontaneous breathing."
* extension[spontaneousBreathing] from $no-domain-vitalsignsobservation-spontaneousbreathingvalueset (required)
* partOf ^comment = "To link an Observation to an Encounter use `encounter`."
* subject only Reference(Patient or $no-basis-Patient)
* focus ^comment = "Typically, an observation is made about the subject - a patient, or group of patients, location, or device - and the distinction between the subject and what is directly measured for an observation is specified in the observation code itself ( e.g., \"Blood Glucose\") and does not need to be represented separately using this element.  Use `specimen` if a reference to a specimen is required.  If a code is required instead of a resource use either  `bodysite` for bodysites or the standard extension focusCode."
* performer 1..
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    Organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[Organization] only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or $no-basis-Organization)
* valueQuantity ^short = "The frequency of spontaneous breathing."
* valueQuantity ^definition = "The frequency of spontaneous breathing."
* valueQuantity ^comment = "An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value."
* note.id ..0
* note.author[x] ..0
* note.time ..0
* bodySite ^comment = "Only used if not implicit in code found in Observation.code.  In many systems, this may be represented as a related observation instead of an inline component.   \n\nIf the use case requires BodySite to be handled as a separate resource (e.g. to identify and track separately) then use the standard extension bodySite."
* derivedFrom ^comment = "All the reference choices that are listed in this element can represent clinical observations and other measurements that may be the source for a derived value.  The most common reference will be another Observation."
* component.value[x] ^comment = "Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value."
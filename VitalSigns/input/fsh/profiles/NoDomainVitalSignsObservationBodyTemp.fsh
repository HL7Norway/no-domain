Profile: NoDomainVitalSignsObservationBodyTemp
Parent: $bodytemp
Id: NoDomainVitalSignsObservationBodyTemp
Title: "NO Domain VitalSigns Observation - Body Temperature"
Description: "Base profile for Norwegian Vital Signs Observation Body Temperature information. Used for recording the measurement of an individual's body temperature, which is a surrogate for the core body temperature of the individual."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBodyTemp"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^purpose = "Basisprofile for Norwegian  VitalSigns Observation Body Temperature information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Body Temperature."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains    
    NoDomainVitalSignsObservationDaysSinceMenstruationStart  named daysSinceMenstruationStart 0..1 and
    NoDomainVitalSignsObservationBodyExposure  named bodyExposure 0..1 and
    NoDomainVitalSignsObservationActiveHeating  named activeHeating 0..1
* extension[bodyExposure] ^short = "The degree of exposure of the individual at the time of measurement."
* extension[bodyExposure] ^definition = "The degree of exposure of the individual at the time of measurement."
* extension[daysSinceMenstruationStart] ^short = "Current day of the menstrual cycle."
* extension[daysSinceMenstruationStart] ^definition = "Current day of the menstrual cycle."
* extension[activeHeating] ^short = "description of the conditions applied"
* extension[activeHeating] ^definition = "Narrative description of the conditions applied to the subject that might influence their measured body temperature."
* subject only Reference(Patient or $no-basis-Patient)
* focus ^comment = "Typically, an observation is made about the subject - a patient, or group of patients, location, or device - and the distinction between the subject and what is directly measured for an observation is specified in the observation code itself ( e.g., \"Blood Glucose\") and does not need to be represented separately using this element.  Use `specimen` if a reference to a specimen is required.  If a code is required instead of a resource use either  `bodysite` for bodysites or the standard extension focusCode."
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the Timing datatype which allow the measurement to be tied to regular life events."
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[organization] only Reference(Organization or $no-basis-Organization)
* valueQuantity ^short = "The measured temperature."
* valueQuantity ^comment = "An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value."
* note.id ..0
* note.author[x] ..0
* note.time ..0
* code.coding 1..
* bodySite from NoDomainVitalSignsObservationBodyTempBodySite (extensible)
* bodySite ^comment = "Only used if not implicit in code found in Observation.code.  In many systems, this may be represented as a related observation instead of an inline component.   \n\nIf the use case requires BodySite to be handled as a separate resource (e.g. to identify and track separately) then use the standard extension bodySite."
* bodySite.coding from NoDomainVitalSignsObservationBodyTempBodySite (extensible)
* bodySite.coding.system 1..
* bodySite.coding.code 1..
* hasMember ^comment = "When using this element, an observation will typically have either a value or a set of related resources, although both may be present in some cases.  For a discussion on the ways Observations can assembled in groups together, see [Notes](observation.html#obsgrouping) below.  Note that a system may calculate results from QuestionnaireResponse  into a final score and represent the score as an Observation."
* derivedFrom ^comment = "All the reference choices that are listed in this element can represent clinical observations and other measurements that may be the source for a derived value.  The most common reference will be another Observation.  For a discussion on the ways Observations can assembled in groups together, see Notes below."
* component.value[x] ^comment = "Used when observation has a set of component observations. An observation may have both a value (e.g. an  Apgar score)  and component observations (the observations from which the Apgar score was derived). If a value is present, the datatype for this element should be determined by Observation.code. A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value."
* code.coding contains BodyTempSnomedCode 0..1
* code.coding[BodyTempSnomedCode] ^definition = "body Height Snomed Code"
* code.coding[BodyTempSnomedCode] ^short = "body Height Snomed Code"
* code.coding[BodyTempSnomedCode].system 1..1
* code.coding[BodyTempSnomedCode].system = $sct
* code.coding[BodyTempSnomedCode].code = #276885007
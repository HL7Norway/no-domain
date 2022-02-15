Profile: NoDomainVitalSignsObservationBloodpressure
Parent: $bp
Id: NoDomainVitalSignsObservationBloodpressure
Title: "NO Domain VitalSigns Observation - Blood pressure"
Description: """Base profile for Norwegian Vital Signs Observation Blood pressure information. The local measurement of arterial blood pressure, which is a surrogate for arterial pressure in the systemic circulation."""
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bloodpressure"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2022-02-10"
* ^purpose = "To record the systemic arterial blood pressure of an individual."
* . ^short = "FHIR Blood Pressure Profile Norway"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoDomainVitalSignsObservationHeadTiltExtension named headTiltAngle 0..1 and
    NoDomainVitalSignsObservationSleepStatusExtension named sleepStatus 0..1 and
    NoDomainVitalSignsObservationCuffSizeExtension named cuffSize 0..1 and
    NoDomainVitalSignsObservationLevelOfExertionExtension named levelOfExertion 0..1 and
    NoDomainVitalSignsObservationBloodPressureBodyPositionExtension named bodyPosition 0..1 and
    NoDomainVSObservationBloodPressureMeanArterialFormulaExtension named formulaMAPCalc 0..* and
    NoDomainVSObservationBloodPressureSystolicFormulaExtension named formulaSystolicCalc 0..* and
    NoDomainVSObservationBloodPressureDiastolicFormulaExtension named formulaDiastolicCalc 0..* and
    NoDomainVitalSignsObservationDiastolicEndPointExtension named diastolicEndpoint 0..1
* extension[headTiltAngle] ^short = "The craniocaudal tilt of the surface on which the person is lying at the time of measurement."
* extension[headTiltAngle] ^definition = "The craniocaudal tilt of the surface on which the person is lying at the time of measurement."
//* extension[sleepStatus] from NoDomainVitalSignsObservationSleepStatusValueSet (required)
* extension[sleepStatus] ^short = "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records."
* extension[sleepStatus] ^definition = "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records."
//* extension[cuffSize] from NoDomainVitalSignsObservationCuffsizeValueSet (required)
* extension[cuffSize] ^short = "The size of the cuff used for blood pressure measurement."
* extension[cuffSize] ^definition = "The size of the cuff used for blood pressure measurement."
* extension[levelOfExertion] ^short = "Details about physical activity undertaken at the time of blood pressure measurement."
* extension[levelOfExertion] ^definition = "Details about physical activity undertaken at the time of blood pressure measurement."
//* extension[bodyPosition] from NoDomainVitalSignsObservationBloodPressureBodyPositionValueSet (required)
* extension[bodyPosition] ^short = "The position of the individual at the time of measurement."
* extension[bodyPosition] ^definition = "The position of the individual at the time of measurement."
* extension[formulaMAPCalc] ^short = "Formula used to calculate the Mean Arterial Pressure"
* extension[formulaMAPCalc] ^definition = "Formula used to calculate the Mean Arterial Pressure"
* extension[formulaSystolicCalc] ^short = "Formula used to calculate the systolic pressure from mean arterial pressure"
* extension[formulaSystolicCalc] ^definition = "Formula used to calculate the systolic pressure from mean arterial pressure"
* extension[formulaDiastolicCalc] ^short = "Formula used to calculate the diastolic pressure from mean arterial pressure"
* extension[formulaDiastolicCalc] ^definition = "Formula used to calculate the diastolic pressure from mean arterial pressure"
//* extension[diastolicEndpoint] from NoDomainVitalSignsObservationDiastolicEndpointValueSet (required)
* extension[diastolicEndpoint] ^short = "Record which Korotkoff sound is used for determining diastolic pressure using auscultative method."
* extension[diastolicEndpoint] ^definition = "Record which Korotkoff sound is used for determining diastolic pressure using auscultative method."
* partOf ^comment = "To link an Observation to an Encounter use `encounter`.  See the  Notes below for guidance on referencing another Observation."
* subject only Reference(Patient or $no-basis-Patient)
* subject ^short = "The human subject referred to in this Observation"
* focus ^comment = "Typically, an observation is made about the subject - a patient, or group of patients, location, or device - and the distinction between the subject and what is directly measured for an observation is specified in the observation code itself ( e.g., \"Blood Glucose\") and does not need to be represented separately using this element.  Use `specimen` if a reference to a specimen is required."
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the Timing datatype which allow the measurement to be tied to regular life events."
* issued ^comment = "For Observations that don’t require review and verification, it may be the same as the `lastUpdated` time of the resource itself.  For Observations that do require review and verification for certain updates, it might not be the same as the `lastUpdated` time of the resource itself due to a non-clinically significant update that doesn’t require the new version to be reviewed and verified again."
* performer 1..
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    Organization 0..*
//* performer[Author] only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[Author] only Reference(Organization or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[Organization] only Reference(Organization or $no-basis-Organization)
* note.id ..0
* note.author[x] ..0
* note.time ..0
* bodySite from NoDomainVitalSignsObservationBloodPressureBodySiteValueSet (required)
* bodySite ^short = "Simple body site where blood pressure was measured."
* bodySite ^comment = "Only used if not implicit in code found in Observation.code.  In many systems, this may be represented as a related observation instead of an inline component."
* bodySite.coding from NoDomainVitalSignsObservationBloodPressureBodySiteValueSet (required)
* bodySite.coding.system from $no-bloodpressurebodysite-valueset (required)
* method from NoDomainVSObservationBloodPressureMeasurementMethodValueSet (required)
* method ^short = "Method of measurement of blood pressure."
* method.coding from NoDomainVSObservationBloodPressureMeasurementMethodValueSet (required)
* method.coding.system from $no-domain-vitalsignsobservation-measurementmethodvalueSet (required)
* hasMember ^comment = "When using this element, an observation will typically have either a value or a set of related resources, although both may be present in some cases.  For a discussion on the ways Observations can assembled in groups together, see Notes below.  Note that a system may calculate results from QuestionnaireResponse into a final score and represent the score as an Observation."
* derivedFrom ^comment = "All the reference choices that are listed in this element can represent clinical observations and other measurements that may be the source for a derived value.  The most common reference will be another Observation.  For a discussion on the ways Observations can assembled in groups together, see Notes below."
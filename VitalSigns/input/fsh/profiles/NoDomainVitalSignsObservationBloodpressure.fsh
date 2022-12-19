Profile: NoDomainVitalSignsObservationBloodpressure
Parent: $bp
Id: NoDomainVitalSignsObservationBloodpressure
Title: "NO Domain VitalSigns Observation - Blood pressure"
Description: """Base profile for Norwegian Vital Signs Observation Blood pressure information. The local measurement of arterial blood pressure, which is a surrogate for arterial pressure in the systemic circulation."""
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBloodpressure"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^purpose = "To record the systemic arterial blood pressure of an individual."
* . ^short = "FHIR Blood Pressure Profile Norway"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoDomainVitalSignsObservationHeadTilt  named headTiltAngle 0..1 and
    NoDomainVitalSignsObservationSleepStatus  named sleepStatus 0..1 and
    NoDomainVitalSignsObservationCuffSize  named cuffSize 0..1 and
    NoDomainVitalSignsObservationBloodpressureBodyPosition  named bodyPosition 0..1 and
    NoDomainVitalSignsObservationBloodpressureMeanArterialFormula  named formulaMAPCalc 0..* and
    NoDomainVitalSignsObservationBloodpressureSystolicFormula  named formulaSystolicCalc 0..* and
    NoDomainVitalSignsObservationBloodpressureDiastolicFormula  named formulaDiastolicCalc 0..* and
    NoDomainVitalSignsObservationDiastolicEndPoint  named diastolicEndpoint 0..1
* extension[headTiltAngle] ^short = "The craniocaudal tilt of the surface on which the person is lying at the time of measurement."
* extension[headTiltAngle] ^definition = "The craniocaudal tilt of the surface on which the person is lying at the time of measurement."
* extension[sleepStatus] ^short = "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records."
* extension[sleepStatus] ^definition = "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records."
* extension[cuffSize] ^short = "The size of the cuff used for blood pressure measurement."
* extension[cuffSize] ^definition = "The size of the cuff used for blood pressure measurement."
* extension[bodyPosition] ^short = "The position of the individual at the time of measurement."
* extension[bodyPosition] ^definition = "The position of the individual at the time of measurement."
* extension[formulaMAPCalc] ^short = "Formula used to calculate the Mean Arterial Pressure"
* extension[formulaMAPCalc] ^definition = "Formula used to calculate the Mean Arterial Pressure"
* extension[formulaSystolicCalc] ^short = "Formula used to calculate the systolic pressure from mean arterial pressure"
* extension[formulaSystolicCalc] ^definition = "Formula used to calculate the systolic pressure from mean arterial pressure"
* extension[formulaDiastolicCalc] ^short = "Formula used to calculate the diastolic pressure from mean arterial pressure"
* extension[formulaDiastolicCalc] ^definition = "Formula used to calculate the diastolic pressure from mean arterial pressure"
// * extension[diastolicEndpoint] from NoDomainVitalSignsObservationDiastolicEndpoint (required)
* extension[diastolicEndpoint] ^short = "Record which Korotkoff sound is used for determining diastolic pressure using auscultative method."
* extension[diastolicEndpoint] ^definition = "Record which Korotkoff sound is used for determining diastolic pressure using auscultative method."
* partOf ^comment = "To link an Observation to an Encounter use `encounter`.  See the  Notes below for guidance on referencing another Observation."
* subject only Reference(Patient or $no-basis-Patient)
* subject ^short = "The human subject referred to in this Observation"
* focus ^comment = "Typically, an observation is made about the subject - a patient, or group of patients, location, or device - and the distinction between the subject and what is directly measured for an observation is specified in the observation code itself ( e.g., \"Blood Glucose\") and does not need to be represented separately using this element.  Use `specimen` if a reference to a specimen is required."
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the Timing datatype which allow the measurement to be tied to regular life events."
* issued ^comment = "For Observations that don’t require review and verification, it may be the same as the `lastUpdated` time of the resource itself.  For Observations that do require review and verification for certain updates, it might not be the same as the `lastUpdated` time of the resource itself due to a non-clinically significant update that doesn’t require the new version to be reviewed and verified again."
* performer ^slicing.discriminator.type = #profile
* performer ^slicing.discriminator.path = "resolve()"
* performer ^slicing.rules = #open
* performer contains
    Author 0..*  and
    organization 0..*     
* performer[Author] only Reference(Practitioner or PractitionerRole or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[organization] only Reference(Organization or $no-basis-Organization)
* note.id ..0
* note.author[x] ..0
* note.time ..0
* bodySite from NoDomainVitalSignsObservationBloodpressureBodySite (required)
* bodySite ^short = "Simple body site where blood pressure was measured."
* bodySite ^comment = "Only used if not implicit in code found in Observation.code.  In many systems, this may be represented as a related observation instead of an inline component."
* bodySite.coding from NoDomainVitalSignsObservationBloodpressureBodySite (required)
// * bodySite.coding.system from $no-bloodpressurebodysite-valueset (required)
* method ^short = "Method of measurement of blood pressure."
* hasMember ^comment = "When using this element, an observation will typically have either a value or a set of related resources, although both may be present in some cases.  For a discussion on the ways Observations can assembled in groups together, see Notes below.  Note that a system may calculate results from QuestionnaireResponse into a final score and represent the score as an Observation."
* derivedFrom ^comment = "All the reference choices that are listed in this element can represent clinical observations and other measurements that may be the source for a derived value.  The most common reference will be another Observation.  For a discussion on the ways Observations can assembled in groups together, see Notes below."
* component ^comment = "For a discussion on the ways Observations can be assembled in groups together see Notes below."
* component[SystolicBP] ^short = "Peak  systemic arterial blood pressure - measured in systolic or contraction phase of the heart cycle."
* component[DiastolicBP] ^short = "Minimum systemic arterial blood pressure - measured in the diastolic or relaxation phase of the heart cycle."
* component contains
    MeanArterialPressure 1..1 and
    PulsePressure 0..1
* component[MeanArterialPressure] ^short = "The average arterial pressure that occurs over the entire course of the heart contraction and relaxation cycle."
* component[MeanArterialPressure] ^comment = "For a discussion on the ways Observations can be assembled in groups together see Notes below."
* component[MeanArterialPressure].code ^comment = "additional codes that translate or map to this code are allowed.  For example a more granular LOINC code or code that is used locally in a system."
* component[MeanArterialPressure].code ^alias[0] = "Component Test"
* component[MeanArterialPressure].code ^alias[+] = "Component Name"
* component[MeanArterialPressure].code.coding ^slicing.discriminator[0].type = #value
* component[MeanArterialPressure].code.coding ^slicing.discriminator[=].path = "code"
* component[MeanArterialPressure].code.coding ^slicing.discriminator[+].type = #value
* component[MeanArterialPressure].code.coding ^slicing.discriminator[=].path = "system"
* component[MeanArterialPressure].code.coding ^slicing.ordered = false
* component[MeanArterialPressure].code.coding ^slicing.rules = #open
* component[MeanArterialPressure].code.coding ^short = "Systolic Blood Pressure"
* component[MeanArterialPressure].code.coding ^definition = "Systolic Blood Pressure."
* component[MeanArterialPressure].code.coding contains MAPCode 1..1
* component[MeanArterialPressure].code.coding[MAPCode] ^short = "Systolic Blood Pressure"
* component[MeanArterialPressure].code.coding[MAPCode] ^definition = "Systolic Blood Pressure."
* component[MeanArterialPressure].code.coding[MAPCode].system 1..1
* component[MeanArterialPressure].code.coding[MAPCode].system only uri
* component[MeanArterialPressure].code.coding[MAPCode].system = "http://loinc.org" (exactly)
* component[MeanArterialPressure].code.coding[MAPCode].code 1..1
* component[MeanArterialPressure].code.coding[MAPCode].code only code
* component[MeanArterialPressure].code.coding[MAPCode].code = #8478-0 (exactly)
* component[MeanArterialPressure].value[x] only Quantity
* component[MeanArterialPressure].value[x] ^slicing.discriminator.type = #type
* component[MeanArterialPressure].value[x] ^slicing.discriminator.path = "$this"
* component[MeanArterialPressure].value[x] ^slicing.rules = #open
* component[MeanArterialPressure].valueQuantity only Quantity
* component[MeanArterialPressure].valueQuantity ^sliceName = "valueQuantity"
* component[MeanArterialPressure].valueQuantity.value 1..
* component[MeanArterialPressure].valueQuantity.unit 1..
* component[MeanArterialPressure].valueQuantity.system 1..
* component[MeanArterialPressure].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[MeanArterialPressure].valueQuantity.code 1..
* component[MeanArterialPressure].valueQuantity.code = #mm[Hg] (exactly)
* component[PulsePressure] ^short = "The difference between the systolic and diastolic pressure."
* component[PulsePressure] ^comment = "For a discussion on the ways Observations can be assembled in groups together see Notes below."
* component[PulsePressure].id ..0
* component[PulsePressure].code.coding ^slicing.discriminator.type = #value
* component[PulsePressure].code.coding ^slicing.discriminator.path = "system"
* component[PulsePressure].code.coding ^slicing.rules = #open
* component[PulsePressure].code.coding contains SAPSnomedCode 0..1
* component[PulsePressure].code.coding[SAPSnomedCode].id ..0
* component[PulsePressure].code.coding[SAPSnomedCode].system 1..
* component[PulsePressure].code.coding[SAPSnomedCode].system = "http://snomed.info/sct" (exactly)
* component[PulsePressure].code.coding[SAPSnomedCode].version ..0
* component[PulsePressure].code.coding[SAPSnomedCode].code 1..
* component[PulsePressure].code.coding[SAPSnomedCode].code = #4461000202102 (exactly)
* component[PulsePressure].code.coding[SAPSnomedCode].userSelected ..0
* component[PulsePressure].value[x] only Quantity
* component[PulsePressure].value[x] ^slicing.discriminator.type = #type
* component[PulsePressure].value[x] ^slicing.discriminator.path = "$this"
* component[PulsePressure].value[x] ^slicing.rules = #open
* component[PulsePressure].valueQuantity only Quantity
* component[PulsePressure].valueQuantity ^sliceName = "valueQuantity"
* component[PulsePressure].valueQuantity.value 1..
* component[PulsePressure].valueQuantity.unit 1..
* component[PulsePressure].valueQuantity.system 1..
* component[PulsePressure].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[PulsePressure].valueQuantity.code 1..
* component[PulsePressure].valueQuantity.code = #mm[Hg] (exactly)
* referenceRange ..1
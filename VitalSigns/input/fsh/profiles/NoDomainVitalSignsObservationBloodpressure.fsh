Profile: NoDomainVitalSignsObservationBloodpressure
Parent: $bp
Id: no-domain-VitalSigns-Observation-bloodpressure
Title: "no-domain-VitalSigns-Observation-bloodpressure Profile"
Description: """Domain profile for Norwegian Vital Signs Observation of Blood Pressure. To be used for recording an individual's systemic arterial blood pressure.
It represents the local measurement of arterial blood pressure, serving as a surrogate for arterial pressure in the systemic circulation."""

* ^status = #draft
* ^date = "2025-01-28"
* ^copyright = "Some content in this profile builds on the blood pressure archetype: Blodtrykk, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-02]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2165"
* ^purpose = "To record the systemic arterial blood pressure of an individual."
* . ^short = "FHIR Blood Pressure Profile Norway"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoDomainVitalSignsConfoundingFactorExtension  named confoundingFactor 0..1 and 
    NoDomainVitalSignsTiltExtension  named headTiltAngle 0..1 and
    NoDomainVitalSignsSleepStatusExtension  named sleepStatus 0..1 and
    NoDomainVitalSignsCuffSizeExtension  named cuffSize 0..1 and
    NoDomainVitalSignsBloodpressureBodyPositionExtension  named bodyPosition 0..1 and
    NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension  named formulaMAPCalc 0..1 and
    NoDomainVitalSignsBloodpressureSystolicFormulaExtension  named formulaSystolicCalc 0..1 and
    NoDomainVitalSignsBloodpressureDiastolicFormulaExtension  named formulaDiastolicCalc 0..1 

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
* extension[confoundingFactor] ^definition = "Narrative description of any issues or factors that may impact on measurment"

* subject only Reference(Patient or $no-basis-Patient)
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer contains
    Author 0..*  and
    organization 0..*     
* performer[Author] only Reference(Practitioner or PractitionerRole or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[organization] only Reference(Organization or $no-basis-Organization)
* bodySite from NoDomainVitalSignsBloodpressureBodySiteValueSet (required)

* bodySite.coding from NoDomainVitalSignsBloodpressureBodySiteValueSet (required)
* component[SystolicBP] ^short = "Peak  systemic arterial blood pressure - measured in systolic or contraction phase of the heart cycle."

* component[SystolicBP].code.coding contains SystolicSnomed 0..1
* component[SystolicBP].code.coding[SystolicSnomed].code 1..1
* component[SystolicBP].code.coding[SystolicSnomed].code = #4471000202106 (exactly)
* component[SystolicBP].code.coding[SystolicSnomed].system 1..1
* component[SystolicBP].code.coding[SystolicSnomed].system = $sct (exactly)
* component[DiastolicBP].code.coding contains DiastolicBPSnomed 0..1
* component[DiastolicBP].code.coding[DiastolicBPSnomed].code 1..1
* component[DiastolicBP].code.coding[DiastolicBPSnomed].code = #4481000202108 (exactly)
* component[DiastolicBP].code.coding[DiastolicBPSnomed].system 1..1
* component[DiastolicBP].code.coding[DiastolicBPSnomed].system = $sct (exactly)
* component[DiastolicBP] ^short = "Minimum systemic arterial blood pressure - measured in the diastolic or relaxation phase of the heart cycle."
* component contains
    MeanArterialPressure 0..1 and
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
* component[MeanArterialPressure].code.coding ^short = "Mean Arterial Pressure"
* component[MeanArterialPressure].code.coding ^definition = "Mean Arterial Pressure"
* component[MeanArterialPressure].code.coding contains MAPCode 0..1 and MAPSnomedCode 0..1
* component[MeanArterialPressure].code.coding[MAPCode] ^short = "Mean Arterial Pressure loinc code"
* component[MeanArterialPressure].code.coding[MAPCode] ^definition = "Mean Arterial Pressure loinc code."
* component[MeanArterialPressure].code.coding[MAPCode].system 1..1
* component[MeanArterialPressure].code.coding[MAPCode].system only uri
* component[MeanArterialPressure].code.coding[MAPCode].system = "http://loinc.org" (exactly)
* component[MeanArterialPressure].code.coding[MAPCode].code 1..1
* component[MeanArterialPressure].code.coding[MAPCode].code only code
* component[MeanArterialPressure].code.coding[MAPCode].code = #8478-0 (exactly)
* component[MeanArterialPressure].code.coding[MAPSnomedCode] ^short = "Mean Arterial Pressure snomed code"
* component[MeanArterialPressure].code.coding[MAPSnomedCode] ^definition = "Mean Arterial Pressure snomed code"
* component[MeanArterialPressure].code.coding[MAPSnomedCode].system 1..1
* component[MeanArterialPressure].code.coding[MAPSnomedCode].system only uri
* component[MeanArterialPressure].code.coding[MAPSnomedCode].system = "http://snomed.info/sct" (exactly)
* component[MeanArterialPressure].code.coding[MAPSnomedCode].code 1..1
* component[MeanArterialPressure].code.coding[MAPSnomedCode].code only code
* component[MeanArterialPressure].code.coding[MAPSnomedCode].code = #4501000202102 (exactly)
* component[MeanArterialPressure].value[x] only Quantity
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
* component[PulsePressure].code.coding contains SAPSnomedCode 1..1
* component[PulsePressure].code.coding[SAPSnomedCode].id ..0
* component[PulsePressure].code.coding[SAPSnomedCode].system 1..
* component[PulsePressure].code.coding[SAPSnomedCode].system = "http://snomed.info/sct" (exactly)
* component[PulsePressure].code.coding[SAPSnomedCode].version ..0
* component[PulsePressure].code.coding[SAPSnomedCode].code 1..
* component[PulsePressure].code.coding[SAPSnomedCode].code = #4461000202102 (exactly)
* component[PulsePressure].code.coding[SAPSnomedCode].userSelected ..0
* component[PulsePressure].value[x] only Quantity
* component[PulsePressure].valueQuantity.value 1..
* component[PulsePressure].valueQuantity.unit 1..
* component[PulsePressure].valueQuantity.system 1..
* component[PulsePressure].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[PulsePressure].valueQuantity.code 1..
* component[PulsePressure].valueQuantity.code = #mm[Hg] (exactly)
* referenceRange ..1
* code.coding 1..
* method from NoDomainVitalSignsBloodPressureMeasurementMethodValueSet (extensible)
* method ^short = "Method of measurement of blood pressure."
* method.coding from NoDomainVitalSignsBloodPressureMeasurementMethodValueSet (extensible)

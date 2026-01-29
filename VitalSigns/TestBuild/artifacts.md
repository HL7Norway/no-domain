# Artifacts Summary - v0.9.71

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [no-domain-VitalSigns-Observation-bloodpressure Profile](StructureDefinition-no-domain-VitalSigns-Observation-bloodpressure.md) | Domain profile for Norwegian Vital Signs Observation of Blood Pressure. To be used for recording an individual's systemic arterial blood pressure. It represents the local measurement of arterial blood pressure, serving as a surrogate for arterial pressure in the systemic circulation. |
| [no-domain-VitalSigns-Observation-bodyheight Profile](StructureDefinition-no-domain-VitalSigns-Observation-bodyheight.md) | Domain profile for Norwegian Vital Signs Observation Body Height information. To be used for recording the measured height or body length of an individual at any point in time. It represents the individual's height or length measured from the crown of the head to the sole of the foot. |
| [no-domain-VitalSigns-Observation-bodytemp Profile](StructureDefinition-no-domain-VitalSigns-Observation-bodytemp.md) | Domain profile for Norwegian Vital Signs Observation Body Temperature information. To be used for recording the measurement of an individual's body temperature. which is a surrogate for the core body temperature of the individual. |
| [no-domain-VitalSigns-Observation-bodyweight Profile](StructureDefinition-no-domain-VitalSigns-Observation-bodyweight.md) | Domain profile for Norwegian Vital Signs Observation Body Weight information. To be used for recording the actual measurement of body weight, including when the individual is missing a body part due to a congenital cause or after surgical removal. |
| [no-domain-VitalSigns-Observation-heartrate Profile](StructureDefinition-no-domain-VitalSigns-Observation-heartrate.md) | Domain profile for Norwegian Vital Signs Observation Heart Rate information. To be used for recording the rate and associated attributes for a heart beat. This profile describes how to use a SNOMED code to indicate that the measurement is a general heart rate measurement, and not a more specific measurement of the actual heart beat or pulse reading. |
| [no-domain-VitalSigns-Observation-oxygensaturation Profile](StructureDefinition-no-domain-VitalSigns-Observation-oxygensaturation.md) | Domain profile for Norwegian Vital Signs Observation Oxygen Saturation information. To be used for recording blood oxygen and related measurements, measured by pulse oximetry or pulse CO-oximetry. |
| [no-domain-VitalSigns-Observation-pulse Profile](StructureDefinition-no-domain-VitalSigns-Observation-pulse.md) | Domain profile for Norwegian Vital Signs Observation Pulse information. To be used for recording the number of times your arteries create a noticeable pulse due to increase in blood pressure. This profile describes how to use a SNOMED code to indicate that the measurement is actually a pulse measurement at systemic artery, and not a general heart rate measurement that can be measured both as pulse and the actual heart beat. |
| [no-domain-VitalSigns-Observation-respirationrate Profile](StructureDefinition-no-domain-VitalSigns-Observation-respirationrate.md) | Domain profile for Norwegian Vital Signs Observation Respiration Rate information. To be used for recording the observed and measured characteristics of spontaneous breathing by an individual, including respiratory rate, depth and rhythm. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [NoDomainVitalSignsActiveHeating-Extension](StructureDefinition-NoDomainVitalSignsActiveHeatingExtension.md) | description of the conditions applied |
| [NoDomainVitalSignsBloodpressureBodyPosition-Extension](StructureDefinition-NoDomainVitalSignsBloodpressureBodyPositionExtension.md) | The position of the individual at the time of measurement. |
| [NoDomainVitalSignsBloodpressureDiastolicFormula-Extension](StructureDefinition-NoDomainVitalSignsBloodpressureDiastolicFormulaExtension.md) | Formula used to calculate the pressure. |
| [NoDomainVitalSignsBloodpressureMeanArterialFormula-Extension](StructureDefinition-NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension.md) | Formula used to calculate the pressure. |
| [NoDomainVitalSignsBloodpressureSystolicFormula-Extension](StructureDefinition-NoDomainVitalSignsBloodpressureSystolicFormulaExtension.md) | Formula used to calculate the pressure. |
| [NoDomainVitalSignsBodyExposure-Extension](StructureDefinition-NoDomainVitalSignsBodyExposureExtension.md) | The degree of exposure of the individual at the time of measurement. |
| [NoDomainVitalSignsBodyHeightBodyPosition-Extension](StructureDefinition-NoDomainVitalSignsBodyHeightBodyPositionExtension.md) | Position of individual when body height measured. |
| [NoDomainVitalSignsCharacterOfPulse-Extension](StructureDefinition-NoDomainVitalSignsCharacterOfPulseExtension.md) | Description of the character of the pulse. |
| [NoDomainVitalSignsClinicalDescription-Extension](StructureDefinition-NoDomainVitalSignsClinicalDescriptionExtension.md) | Narrative description about the pulse or heart beat. |
| [NoDomainVitalSignsClothingState-Extension](StructureDefinition-NoDomainVitalSignsClothingStateExtension.md) | Description of the state of dress of the person at the time of weighing. |
| [NoDomainVitalSignsConfoundingFactor-Extension](StructureDefinition-NoDomainVitalSignsConfoundingFactorExtension.md) | Confounding factor is Issues or factors that may impact on the measurement, not captured in other fields |
| [NoDomainVitalSignsCuffSize-Extension](StructureDefinition-NoDomainVitalSignsCuffSizeExtension.md) | The size of the cuff used for blood pressure measurement. |
| [NoDomainVitalSignsDaysSinceMenstruationStart-Extension](StructureDefinition-NoDomainVitalSignsDaysSinceMenstruationStartExtension.md) | Current day of the menstrual cycle. |
| [NoDomainVitalSignsDiastolicEndPoint-Extension](StructureDefinition-NoDomainVitalSignsDiastolicEndPointExtension.md) | Record which Korotkoff sound is used for determining diastolic pressure using auscultative method. |
| [NoDomainVitalSignsFiO2-Extension](StructureDefinition-NoDomainVitalSignsFiO2Extension.md) | Fraction of oxygen in inspired air. |
| [NoDomainVitalSignsFlow-Extension](StructureDefinition-NoDomainVitalSignsFlowExtension.md) | Oxygen flow rate given to an individual. |
| [NoDomainVitalSignsHeartRatePulseBodyPosition-Extension](StructureDefinition-NoDomainVitalSignsHeartRatePulseBodyPositionExtension.md) | Record which Korotkoff sound is used for determining diastolic pressure using auscultative method. |
| [NoDomainVitalSignsHeartRhythmIrregularity-Extension](StructureDefinition-NoDomainVitalSignsHeartRhythmIrregularityExtension.md) | Patterns of the heart beat. |
| [NoDomainVitalSignsInspiredOxygen-Extension](StructureDefinition-NoDomainVitalSignsInspiredOxygenExtension.md) | Details of the amount of oxygen available to the subject at the time of observation. |
| [NoDomainVitalSignsMethodofOxygenDelivery-Extension](StructureDefinition-NoDomainVitalSignsMethodofOxygenDeliveryExtension.md) | The method used to deliver the oxygen. |
| [NoDomainVitalSignsOnAir-Extension](StructureDefinition-NoDomainVitalSignsOnAirExtension.md) | The patient is receiving air, equivalent to 21% O₂ or 0.21 FiO₂ and an oxygen flow rate of 0 litres per minute. |
| [NoDomainVitalSignsPercentO2-Extension](StructureDefinition-NoDomainVitalSignsPercentO2Extension.md) | Percentage of oxygen in inspired air. |
| [NoDomainVitalSignsPulseRhythm-Extension](StructureDefinition-NoDomainVitalSignsPulseRhythmExtension.md) | Regularity of the pulse |
| [NoDomainVitalSignsPulseRhythmIrregularity-Extension](StructureDefinition-NoDomainVitalSignsPulseRhythmIrregularityExtension.md) | More specific pattern of an irregular pulse or heart beat. |
| [NoDomainVitalSignsRespirationDepth-Extension](StructureDefinition-NoDomainVitalSignsRespirationDepthExtension.md) | The depth of spontaneous breathing. |
| [NoDomainVitalSignsRespirationRateBodyPosition-Extension](StructureDefinition-NoDomainVitalSignsRespirationRateBodyPositionExtension.md) | The body position of the individual during the observation. |
| [NoDomainVitalSignsRespirationRegularity-Extension](StructureDefinition-NoDomainVitalSignsRespirationRegularityExtension.md) | The regularity of spontaneous breathing. |
| [NoDomainVitalSignsSleepStatus-Extension](StructureDefinition-NoDomainVitalSignsSleepStatusExtension.md) | Sleep status - supports interpretation of 24 hour ambulatory blood pressure records. |
| [NoDomainVitalSignsSpontaneousBreathing-Extension](StructureDefinition-NoDomainVitalSignsSpontaneousBreathingExtension.md) | A narrative description about the spontaneous breathing of the individual. |
| [NoDomainVitalSignsTilt-Extension](StructureDefinition-NoDomainVitalSignsTiltExtension.md) | The craniocaudal tilt of the surface on which the person is lying at the time of measurement. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [NoDomainVitalSignsBloodPressureMeasurementMethod-ValueSet](ValueSet-NoDomainVitalSignsBloodPressureMeasurementMethodValueSet.md) | Codes representing measurement method for HeartRate |
| [NoDomainVitalSignsBloodpressureBodyPosition-ValueSet](ValueSet-NoDomainVitalSignsBloodpressureBodyPositionValueSet.md) | Codes representing body position for blood pressure |
| [NoDomainVitalSignsBloodpressureBodySite-ValueSet](ValueSet-NoDomainVitalSignsBloodpressureBodySiteValueSet.md) | Codes representing body site for blood pressure |
| [NoDomainVitalSignsBodyExposure-ValueSet](ValueSet-NoDomainVitalSignsBodyExposureValueSet.md) | Codes representing body exposure |
| [NoDomainVitalSignsBodyHeightBodyPosition-ValueSet](ValueSet-NoDomainVitalSignsBodyHeightBodyPositionValueSet.md) | Codes representing body position for body height |
| [NoDomainVitalSignsBodyTempBodySite-ValueSet](ValueSet-NoDomainVitalSignsBodyTempBodySiteValueSet.md) | Codes representing body site for body temperature |
| [NoDomainVitalSignsClothingState-ValueSet](ValueSet-NoDomainVitalSignsClothingStateValueSet.md) | Codes representing level of clothing |
| [NoDomainVitalSignsCuffsize-ValueSet](ValueSet-NoDomainVitalSignsCuffsizeValueSet.md) | Codes representing cuff size |
| [NoDomainVitalSignsDiastolicendPoint-ValueSet](ValueSet-NoDomainVitalSignsDiastolicEndPointValueSet.md) | Codes representing Diastolic end point |
| [NoDomainVitalSignsHeartRateBodySite-ValueSet](ValueSet-NoDomainVitalSignsHeartRateBodySiteValueSet.md) | Codes representing body site for heart rate |
| [NoDomainVitalSignsHeartRateMeasurementMethod-ValueSet](ValueSet-NoDomainVitalSignsHeartRateMeasurementMethodValueSet.md) | Codes representing measurement method for HeartRate |
| [NoDomainVitalSignsHeartRatePulseBodyPosition-ValueSet](ValueSet-NoDomainVitalSignsHeartRatePulseBodyPositionValueSet.md) | Codes representing body position for heart rate or Pulse |
| [NoDomainVitalSignsHeartRhythmIrregularity-ValueSet](ValueSet-NoDomainVitalSignsHeartRhythmIrregularityValueSet.md) | Codes representing heart rhythm irregularity for heart rate |
| [NoDomainVitalSignsPulseBodySite-ValueSet](ValueSet-NoDomainVitalSignsPulseBodySiteValueSet.md) | Codes representing body site for pulse |
| [NoDomainVitalSignsPulseMeasurementMethod-ValueSet](ValueSet-NoDomainVitalSignsPulseMeasurementMethodValueSet.md) | Codes representing measurement method for HeartRate |
| [NoDomainVitalSignsPulseRhythm-ValueSet](ValueSet-NoDomainVitalSignsPulseRhythmValueSet.md) | Codes representing rhythm of Pulse |
| [NoDomainVitalSignsPulseRhythmIrregularity-ValueSet](ValueSet-NoDomainVitalSignsPulseRhythmIrregularityValueSet.md) | Codes representing heart rhythm irregularity for Pulse |
| [NoDomainVitalSignsRespirationRateBodyPosition-ValueSet](ValueSet-NoDomainVitalSignsRespirationRateBodyPositionValueSet.md) | Codes representing body position for respiration rate |
| [NoDomainVitalSignsRespirationRateDepth-ValueSet](ValueSet-NoDomainVitalSignsRespirationRateDepthValueSet.md) | Codes representing depth for respiration rate |
| [NoDomainVitalSignsRespirationRegularity-ValueSet](ValueSet-NoDomainVitalSignsRespirationRegularityValueSet.md) | Codes representing Respiration Regularity |
| [NoDomainVitalSignsSleepStatus-ValueSet](ValueSet-NoDomainVitalSignsSleepStatusValueSet.md) | Codes representing Sleep Status |
| [NoDomainVitalSignsSpontaneousBreathing-ValueSet](ValueSet-NoDomainVitalSignsSpontaneousBreathingValueSet.md) | Codes representing Respiration Spontaneous breathing |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [Organization details of afa23](Organization-afa23.md) |
| [Patient details of cdp1000240](Patient-cdp1000240.md) |
| [Patient details of cdp1000808](Patient-cdp1000808.md) |
| [Practioner details of agb104](PractitionerRole-agb104.md) |
| [PractitionerRole details of agb30](PractitionerRole-agb30.md) |
| [no-blood-pressure-create](Observation-no-blood-pressure-create.md) |
| [no-body-height-create](Observation-no-body-height-create.md) |
| [no-body-temperature-create](Observation-no-body-temperature-create.md) |
| [no-body-weight-create](Observation-no-body-weight-create.md) |
| [no-heart-rate-create](Observation-no-heart-rate-create.md) |
| [no-oxygen-saturation-create](Observation-no-oxygen-saturation-create.md) |
| [no-pulse-rate](Observation-no-pulse-rate.md) |
| [no-respiratory-rate-create](Observation-no-respiratory-rate-create.md) |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [expansion](Parameters-expansion.md) | SNOMED CT Norwegian expansion parameter |


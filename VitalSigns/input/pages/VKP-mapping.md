# VKPObservation vs NoDomainVitalSigns

VKPObservation is another profile specification implemented by Velferdsteknologisk knutepunkt and Pasientens Måledata in the NHN infrastructure. The goal of the profiles is to support sharing and searching for vital signs observations.

## Mapping table

The table shows a the Observation.code (snomed) used in the different profiles. Other summarizes the extensions defined in NoDomainVitalSigns (that don't extist in VKP).

|Type observasjon|Subtype|Profile|LOINC|SNOMED|IHTSDO official|VKP snomed|Other|
|----------------|---------|------|-----|------|------|--|--|
|blodtrykk||NoDomainVitalSignsObservationBloodpressure|85354-9 Blood pressure panel with all children optional|no mapping|no mapping||headTiltAngle,  sleepStatus, cuffSize, bodyPosition, formulaMAPCalc, formulaSystolicCalc, formulaDiastolicCalc|
||blodtrykk (systolisk)|(component)|8480-6 Systolic blood-pressure|4471000202106 Systemic systolic arterial blood pressure (observable entity) |271649006 Systolic blood pressure (observable entity)|271649006 - Systolic blood pressure||
||blodtrykk (diastolisk)|(component)|8462-4 Diastolic blood-pressure|4481000202108 Systemic diastolic arterial blood pressure (observable entity)|271650006 Diastolic blood pressure (observable entity)|271650006 - Diastolic blood pressure||
||MeanArterialPressure (added)|(component)|8478-0 |4491000202105 (finnes ikke i norsk ekstensjon)||IKKE i VKP||
||PulsePressure (added)|(component)|NA| 4461000202102 Systemic arterial pulse pressure (observable entity)||IKKE i VKP||
|kroppshøyde||NoDomainVitalSignsObservationBodyHeight|8302-2 Body height|50373000 Body height measure (observable entity)|248334005 Length of body (observable entity)|IKKE i VKP||
|temperatur||NoDomainVitalSignsObservationBodyTemp|8310-5 Body temperature|276885007 Core body temperature (observable entity)|276885007 Core body temperature (observable entity)|276885007 - Core body temperature|daysSinceMenstruationStart, bodyExposure, activeHeating|
|kroppsvekt||NoDomainVitalSignsObservationBodyWeight|29563-7 Body weight|27113001 Body weight (observable entity)|27113001 Body weight (observable entity)|27113001 - Body weight|clothingState, confoundingFactor|
|hjertefrekvens||NoDomainVitalSignsObservationHeartRate|8867-4 heart-rate|364075005 Heart Rate|78564009 Heart rate measured at systemic artery (observable entity) ECL bruker 364075005|364075005 Heart Rate|heartRythm, confoundingFactor,  clinicalDescription, characterOfHeartrate, BodyPosition, heartRythmIrregularity|
|puls||NoDomainVitalSignsObservationPulse|8867-4 heart-rate|78564009 Heart rate measured at systemic artery (observable entity)|78564009 Heart rate measured at systemic artery (observable entity) ECL bruker 364075005|NA||
|oksygenmetning||NoDomainVitalSignsObservationOxygenSaturation|2708-6 (bør erstattes med 59408-5 internasjonalt)|431314004 Peripheral oxygen saturation (observable entity)|431314004 Peripheral oxygen saturation (observable entity)|431314004 - Peripheral oxygen saturation|inspiredOxygen|
|respirasjonsfrekvens||NoDomainVitalSignsObservationRespirationRate|9279-1 Respiratory Rate|271625008 Rate of spontaneous respiration (observable entity)|86290005 Respiratory rate (observable entity)|IKKE i VKP||
|blodsukker (bare i VKP)||VKPObservation|15074-8 - Glucose [Moles/volume] in Blood|||434912009 - Blood glucose concentration||
|poengsum for skjemabesvarelse||VKPObservation|74465-6 - Questionnaire response Document|||||

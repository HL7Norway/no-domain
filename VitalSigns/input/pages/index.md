### About the Norwegian national vital signs profiles

The *Norwegian national vital signs profiles* have been designed for exchange of the most important [vital signs](https://en.wikipedia.org/wiki/Vital_signs) between systems, devices, and healthcare organizations in the national Norwegian healthcare system.

<div>{% include main-use-case.svg %}</div>

The initiative for the development of the profiles came from the regional health authority for Northern Norway (Helse Nord RHF) for the use case of exchanging the most commonly needed vital signs between an electronic charting and medication system, and the core electronic healthcare record (EHR) and patient management system. Additional initial use cases included exchanging vital signs between the EHR and the radiology system (RIS/PACS), neonatal and neonatal intensive care (NICU) system, the pharmacy and medication production system, and entry and lookup through multiple specialized mobile applications for bedside use. In the subsequent development of the profiles uses cases for home monitoring of patients, patient-provided data (e.g. from smartwatches or other personal health devices), and exchange between healthcare organizations (primary care, specialists, hospitals, and care homes, etc.) have been considered. National quality and research registries have been identified as a possible future use case.

<div>{% include verdikjede-vitalsigns.svg %}</div>

The profiles have been developed limited by the principle that all profiles should derive from the [international vital signs profiles](https://hl7.org/fhir/observation-vitalsigns.html) provided by HL7 International and then constrain or extend these as needed. Additionally, as Norway has adopted [SNOMED CT](https://www.snomed.org) as the standard healthcare related terminology system, the development has adopted the constraint that all ValueSets, "*Magic Value*", and model bindings should be expressed as SNOMED CT pre-coordinated codes.

Since the EHR system in question ([DIPS Arena](https://www.dips.com/)) uses [OpenEHR](https://www.openehr.org) archetypes as its internal information model, and there are both international and Norwegian national archetypes for vital signs that are clinically validated, the [Norwegian national archetypes](https://arketyper.no/ckm/) for the relevant vital signs were chosen as the [logical model](https://fhirblog.com/2016/10/17/logical-models-in-fhir/) for the profiles. The electronic charting and medication system ([IMDsoft Metavision](https://www.imd-soft.com/)) uses a proprietary information model which will need to be mapped to the logical model expressed in the FHIR profiles, but was consulted in order to identify any impedances in the models.

Other information models for these vital signs have been consulted, and while there are several different approaches none have been identified that have the capability to express any concept or relationship that the current profiles are not capable of expressing. Of particular interest here are the [CIMI revised vital signs profiles](https://build.fhir.org/ig/HL7/cimi-vital-signs/) and the [NHS profiles](https://simplifier.net/guide/UK-Core-Implementation-Guide-STU3-Sequence/Home/ProfilesandExtensions/ProfilesIndex.page.md?version=current). CIMI have entirely independently taken an approach remarkably similar to these profiles (which we take as validating this approach), while the NHS has developed their propfiles in conjunction with, and seemingly as a primary use case, profiles for the [NEWS2 score](https://simplifier.net/HL7FHIRUKCoreR4/UKCore-Observation-EarlyWarningTotalScore/~overview). NEWS2 is a standard screening tool in Norwegian hospitals and it is likely that a future revision of these profiles will need to be adapted to work well in this context.  

#### Vital signs profiles and terminology

Information exchange defined as the scope of delivery of NoDomainVitalSigns profiles.  

|Type observasjon|Subtype|Profile|LOINC|SNOMED mapping (Norway)|IHTSDO official mapping|
|----------------|---------|------|-----|------|------|
|blodtrykk||NoDomainVitalSignsObservationBloodpressure|85354-9 Blood pressure panel with all children optional|no mapping|no mapping|
||blodtrykk (systolisk)|(component)|8480-6 Systolic blood-pressure|4471000202106 Systemic systolic arterial blood pressure (observable entity) |271649006 Systolic blood pressure (observable entity)|
||blodtrykk (diastolisk)|(component)|8462-4 Diastolic blood-pressure|4481000202108 Systemic diastolic arterial blood pressure (observable entity)|271650006 Diastolic blood pressure (observable entity)|
||MeanArterialPressure (added)|(component)|8478-0 |4501000202102 Mean systemic arterial pressure (observable entity) ||
||PulsePressure (added)|(component)|NA| 4461000202102 Systemic arterial pulse pressure (observable entity)||
|kroppshøyde||NoDomainVitalSignsObservationBodyHeight|8302-2 Body height|50373000 Body height measure (observable entity)|248334005 Length of body (observable entity)|
|temperatur||NoDomainVitalSignsObservationBodyTemp|8310-5 Body temperature|276885007 Core body temperature (observable entity)|276885007 Core body temperature (observable entity)|
|kroppsvekt||NoDomainVitalSignsObservationBodyWeight|29463-7 Body weight|27113001 Body weight (observable entity)|27113001 Body weight (observable entity)|
|hjertefrekvens||NoDomainVitalSignsObservationHeartRate|8867-4 heart-rate|364075005 Heart Rate|78564009 Heart rate measured at systemic artery (observable entity) ECL bruker 364075005|
|puls||NoDomainVitalSignsObservationPulse|8867-4 heart-rate|78564009 Heart rate measured at systemic artery (observable entity)|78564009 Heart rate measured at systemic artery (observable entity) ECL bruker 364075005|
|oksygenmetning||NoDomainVitalSignsObservationOxygenSaturation|2708-6 |431314004 Peripheral oxygen saturation (observable entity)|431314004 Peripheral oxygen saturation (observable entity)|
|respirasjonsfrekvens||NoDomainVitalSignsObservationRespirationRate|9279-1 Respiratory Rate|271625008 Rate of spontaneous respiration (observable entity)|86290005 Respiratory rate (observable entity)|

There are some gaps in the mapping used in the Norwegian vital signs profiles (SNOMED mapping (Norway)) and the official mapping developed by IHTSDO. The choice of SNOMED terms chosen for use in Norway have been chosen to reflect the SNOMED term that is considered meaningful for the majority of use cases regarding vital signs in Norway.  

[IHTSDO official mapping](https://confluence.ihtsdotools.org/display/FHIR/Vital+Signs+panel+binding)

### License and Legal Terms  

This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

See also [http://hl7.org/fhir/license.html](http://hl7.org/fhir/license.html)

Following is a non-exhaustive list of third-party artifacts and terminologies that may require a separate license:

**SNOMED Clinical Terms® (SNOMED CT®)**
This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International (former known as International Health Terminology Standards Development Organisation IHTSDO). All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. “SNOMED” and “SNOMED CT” are registered trademarks of SNOMED International.

**Logical Observation Identifiers Names and Codes LOINC**
This material contains content from LOINC® (http://loinc.org). The LOINC table, LOINC codes, and LOINC panels and forms file are copyright © 1995-2013, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and available at no cost under the license at http://loinc.org/terms-of-use.
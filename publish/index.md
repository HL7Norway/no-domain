# Home - v0.9.74

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/ImplementationGuide/hl7.fhir.no.domain.vitalsigns | *Version*:0.9.74 |
| Draft as of 2026-03-13 | *Computable Name*:NoDomainVitalSigns |

### About the Norwegian national vital signs profiles

The **Norwegian national vital signs profiles** have been designed for exchange of the most important [vital signs](https://en.wikipedia.org/wiki/Vital_signs) between systems, devices, and healthcare organizations in the national Norwegian healthcare system.

The initiative for the development of the profiles came from the regional health authority for Northern Norway (Helse Nord RHF) for the use case of exchanging the most commonly needed vital signs between an electronic charting and medication system, and the core electronic healthcare record (EHR) and patient management system. Additional initial use cases included exchanging vital signs between the EHR and the radiology system (RIS/PACS), neonatal and neonatal intensive care (NICU) system, the pharmacy and medication production system, and entry and lookup through multiple specialized mobile applications for bedside use. In the subsequent development of the profiles uses cases for home monitoring of patients, patient-provided data (e.g. from smartwatches or other personal health devices), and exchange between healthcare organizations (primary care, specialists, hospitals, and care homes, etc.) have been considered. National quality and research registries have been identified as a possible future use case.

The profiles have been developed limited by the principle that all profiles should derive from the [international vital signs profiles](https://hl7.org/fhir/observation-vitalsigns.html) provided by HL7 International and then constrain or extend these as needed. Additionally, as Norway has adopted [SNOMED CT](https://www.snomed.org) as the standard healthcare related terminology system, the development has adopted the constraint that all ValueSets, "**Magic Value**", and model bindings should be expressed as SNOMED CT pre-coordinated codes.

Since the EHR system in question ([DIPS Arena](https://www.dips.com/)) uses [OpenEHR](https://www.openehr.org) archetypes as its internal information model, and there are both international and Norwegian national archetypes for vital signs that are clinically validated, the [Norwegian national archetypes](https://arketyper.no/ckm/) for the relevant vital signs were chosen as the [logical model](https://fhirblog.com/2016/10/17/logical-models-in-fhir/) for the profiles. The electronic charting and medication system ([IMDsoft Metavision](https://www.imd-soft.com/)) uses a proprietary information model which will need to be mapped to the logical model expressed in the FHIR profiles, but was consulted in order to identify any impedances in the models.

Other information models for these vital signs have been consulted, and while there are several different approaches none have been identified that have the capability to express any concept or relationship that the current profiles are not capable of expressing. Of particular interest here are the [CIMI revised vital signs profiles](https://build.fhir.org/ig/HL7/cimi-vital-signs/) and the [NHS profiles](https://simplifier.net/guide/UK-Core-Implementation-Guide-STU3-Sequence/Home/ProfilesandExtensions/ProfilesIndex.page.md?version=current). CIMI have entirely independently taken an approach remarkably similar to these profiles (which we take as validating this approach), while the NHS has developed their propfiles in conjunction with, and seemingly as a primary use case, profiles for the [NEWS2 score](https://simplifier.net/HL7FHIRUKCoreR4/UKCore-Observation-EarlyWarningTotalScore/~overview). NEWS2 is a standard screening tool in Norwegian hospitals and it is likely that a future revision of these profiles will need to be adapted to work well in this context.

#### Vital signs profiles and terminology

Information exchange defined as the scope of delivery of NoDomainVitalSigns profiles.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| blodtrykk |   | NoDomainVitalSignsObservationBloodpressure | 85354-9 Blood pressure panel with all children optional | no mapping | no mapping |
|   | blodtrykk (systolisk) | (component) | 8480-6 Systolic blood-pressure | 4471000202106 Systemic systolic arterial blood pressure (observable entity) | 271649006 Systolic blood pressure (observable entity) |
|   | blodtrykk (diastolisk) | (component) | 8462-4 Diastolic blood-pressure | 4481000202108 Systemic diastolic arterial blood pressure (observable entity) | 271650006 Diastolic blood pressure (observable entity) |
|   | MeanArterialPressure (added) | (component) | 8478-0 Mean blood pressure | 4501000202102 Mean systemic arterial pressure (observable entity) |   |
|   | PulsePressure (added) | (component) | NA | 4461000202102 Systemic arterial pulse pressure (observable entity) |   |
| kroppshøyde |   | NoDomainVitalSignsObservationBodyHeight | 8302-2 Body height | 1153637007 Body height (observable entity) | 248334005 Length of body (observable entity) |
| temperatur |   | NoDomainVitalSignsObservationBodyTemp | 8310-5 Body temperature | 276885007 Core body temperature (observable entity) | 276885007 Core body temperature (observable entity) |
| kroppsvekt |   | NoDomainVitalSignsObservationBodyWeight | 29463-7 Body weight | 27113001 Body weight (observable entity) | 27113001 Body weight (observable entity) |
| hjertefrekvens |   | NoDomainVitalSignsObservationHeartRate | 8867-4 heart-rate | 364075005 Heart Rate | 78564009 Heart rate measured at systemic artery (observable entity) ECL bruker 364075005 |
| puls |   | NoDomainVitalSignsObservationPulse | 8867-4 heart-rate | 78564009 Heart rate measured at systemic artery (observable entity) | 78564009 Heart rate measured at systemic artery (observable entity) ECL bruker 364075005 |
| oksygenmetning |   | NoDomainVitalSignsObservationOxygenSaturation | 2708-6 Oxygen saturation in Arterial blood | 431314004 Peripheral oxygen saturation (observable entity) | 431314004 Peripheral oxygen saturation (observable entity) |
| respirasjonsfrekvens |   | NoDomainVitalSignsObservationRespirationRate | 9279-1 Respiratory Rate | 271625008 Rate of spontaneous respiration (observable entity) | 86290005 Respiratory rate (observable entity) |

There are some gaps in the mapping used in the Norwegian vital signs profiles (SNOMED mapping (Norway)) and the official mapping developed by IHTSDO. The choice of SNOMED terms chosen for use in Norway have been chosen to reflect the SNOMED term that is considered meaningful for the majority of use cases regarding vital signs in Norway. Please visit [Guideance](guidance.md) for further information about the SNOMED CT terms and their use in these profiles.

[IHTSDO official mapping](https://confluence.ihtsdotools.org/display/FHIR/Vital+Signs+panel+binding)

### Governance and change process

The source code of this implementation guide is maintained in a publicly awaliable repository on (HL7 Norway Github)[https://github.com/HL7Norway]. Anyone can propose changes to the profiles by opening issues in the GitHub repo. HL7 Norway encourages any input to be handled using the issue system on Github as they help the affiliate to track proposed changes and facilitate an open discussion of the proposed changes.

#### Known bugs and errors

There are several known bugs and issues that are planned to be resovled in upcoming releases. A list of known issues and bugs are maintained in the [Github repo](https://github.com/HL7Norway/no-domain/issues).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.no.domain.vitalsigns",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/ImplementationGuide/hl7.fhir.no.domain.vitalsigns",
  "version" : "0.9.74",
  "name" : "NoDomainVitalSigns",
  "status" : "draft",
  "date" : "2026-03-13T10:43:11+00:00",
  "publisher" : "HL7 Norway",
  "contact" : [{
    "name" : "HL7 Norway",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.no"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "packageId" : "hl7.fhir.no.domain.vitalsigns",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.2.0"
  },
  {
    "id" : "hl7_fhir_no_basis",
    "uri" : "http://fhir.org/packages/hl7.fhir.no.basis/ImplementationGuide/hl7.fhir.no.basis",
    "packageId" : "hl7.fhir.no.basis",
    "version" : "2.2.2"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "QANormative-1"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.no/fhir/no-domain/vitalsigns/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#0.9.0"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "QANormative-1"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.no/fhir/no-domain/vitalsigns/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      }],
      "reference" : {
        "reference" : "Parameters/expansion"
      },
      "name" : "expansion",
      "description" : "SNOMED CT Norwegian expansion parameter",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/no-blood-pressure-create"
      },
      "name" : "no-blood-pressure-create",
      "exampleCanonical" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bloodpressure"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/no-body-height-create"
      },
      "name" : "no-body-height-create",
      "exampleCanonical" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodyheight"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/no-body-temperature-create"
      },
      "name" : "no-body-temperature-create",
      "exampleCanonical" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodytemp"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/no-body-weight-create"
      },
      "name" : "no-body-weight-create",
      "exampleCanonical" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-bodyweight"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-domain-VitalSigns-Observation-bloodpressure"
      },
      "name" : "no-domain-VitalSigns-Observation-bloodpressure Profile",
      "description" : "Domain profile for Norwegian Vital Signs Observation of Blood Pressure. To be used for recording an individual's systemic arterial blood pressure.\nIt represents the local measurement of arterial blood pressure, serving as a surrogate for arterial pressure in the systemic circulation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-domain-VitalSigns-Observation-bodyheight"
      },
      "name" : "no-domain-VitalSigns-Observation-bodyheight Profile",
      "description" : "Domain profile for Norwegian Vital Signs Observation Body Height information.  \nTo be used for recording the measured height or body length of an individual at any point in time. It represents the individual's height or length measured from the crown of the head to the sole of the foot.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-domain-VitalSigns-Observation-bodytemp"
      },
      "name" : "no-domain-VitalSigns-Observation-bodytemp Profile",
      "description" : "Domain profile for Norwegian Vital Signs Observation Body Temperature information. To be used for recording the measurement of an individual's body temperature. which is a surrogate for the core body temperature of the individual.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-domain-VitalSigns-Observation-bodyweight"
      },
      "name" : "no-domain-VitalSigns-Observation-bodyweight Profile",
      "description" : "Domain profile for Norwegian Vital Signs Observation Body Weight information. To be used for recording the actual measurement of body weight, including when the individual is missing a body part due to a congenital cause or after surgical removal.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-domain-VitalSigns-Observation-heartrate"
      },
      "name" : "no-domain-VitalSigns-Observation-heartrate Profile",
      "description" : "Domain profile for Norwegian Vital Signs Observation Heart Rate information.  \nTo be used for recording the rate and associated attributes for a heart beat. This profile describes how to use a SNOMED code to indicate that the measurement is a general heart rate measurement, and not a more specific measurement of the actual heart beat or pulse reading.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-domain-VitalSigns-Observation-oxygensaturation"
      },
      "name" : "no-domain-VitalSigns-Observation-oxygensaturation Profile",
      "description" : "Domain profile for Norwegian Vital Signs Observation Oxygen Saturation information.  \nTo be used for recording blood oxygen and related measurements, measured by pulse oximetry or pulse CO-oximetry.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-domain-VitalSigns-Observation-pulse"
      },
      "name" : "no-domain-VitalSigns-Observation-pulse Profile",
      "description" : "Domain profile for Norwegian Vital Signs Observation Pulse information. To be used for recording the number of times your arteries create a noticeable pulse due to increase in blood pressure. This profile describes how to use a SNOMED code to indicate that the measurement is actually a pulse measurement at systemic artery, and not a general heart rate measurement that can be measured both as pulse and the actual heart beat.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/no-domain-VitalSigns-Observation-respirationrate"
      },
      "name" : "no-domain-VitalSigns-Observation-respirationrate Profile",
      "description" : "Domain profile for Norwegian Vital Signs Observation Respiration Rate information.  \nTo be used for recording the observed and measured characteristics of spontaneous breathing by an individual, including respiratory rate, depth and rhythm.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/no-heart-rate-create"
      },
      "name" : "no-heart-rate-create",
      "exampleCanonical" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-heartrate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/no-oxygen-saturation-create"
      },
      "name" : "no-oxygen-saturation-create",
      "exampleCanonical" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-oxygensaturation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/no-pulse-rate"
      },
      "name" : "no-pulse-rate",
      "exampleCanonical" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-pulse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/no-respiratory-rate-create"
      },
      "name" : "no-respiratory-rate-create",
      "exampleCanonical" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/no-domain-VitalSigns-Observation-respirationrate"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsActiveHeatingExtension"
      },
      "name" : "NoDomainVitalSignsActiveHeating-Extension",
      "description" : "description of the conditions applied",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsBloodpressureBodyPositionExtension"
      },
      "name" : "NoDomainVitalSignsBloodpressureBodyPosition-Extension",
      "description" : "The position of the individual at the time of measurement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsBloodpressureBodyPositionValueSet"
      },
      "name" : "NoDomainVitalSignsBloodpressureBodyPosition-ValueSet",
      "description" : "Codes representing body position for blood pressure",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsBloodpressureBodySiteValueSet"
      },
      "name" : "NoDomainVitalSignsBloodpressureBodySite-ValueSet",
      "description" : "Codes representing body site for blood pressure",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsBloodpressureDiastolicFormulaExtension"
      },
      "name" : "NoDomainVitalSignsBloodpressureDiastolicFormula-Extension",
      "description" : "Formula used to calculate the pressure.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension"
      },
      "name" : "NoDomainVitalSignsBloodpressureMeanArterialFormula-Extension",
      "description" : "Formula used to calculate the pressure.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsBloodPressureMeasurementMethodValueSet"
      },
      "name" : "NoDomainVitalSignsBloodPressureMeasurementMethod-ValueSet",
      "description" : "Codes representing measurement method for HeartRate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsBloodpressureSystolicFormulaExtension"
      },
      "name" : "NoDomainVitalSignsBloodpressureSystolicFormula-Extension",
      "description" : "Formula used to calculate the pressure.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsBodyExposureExtension"
      },
      "name" : "NoDomainVitalSignsBodyExposure-Extension",
      "description" : "The degree of exposure of the individual at the time of measurement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsBodyExposureValueSet"
      },
      "name" : "NoDomainVitalSignsBodyExposure-ValueSet",
      "description" : "Codes representing body exposure",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsBodyHeightBodyPositionExtension"
      },
      "name" : "NoDomainVitalSignsBodyHeightBodyPosition-Extension",
      "description" : "Position of individual when body height measured.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsBodyHeightBodyPositionValueSet"
      },
      "name" : "NoDomainVitalSignsBodyHeightBodyPosition-ValueSet",
      "description" : "Codes representing body position for body height",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsBodyTempBodySiteValueSet"
      },
      "name" : "NoDomainVitalSignsBodyTempBodySite-ValueSet",
      "description" : "Codes representing body site for body temperature",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsCharacterOfPulseExtension"
      },
      "name" : "NoDomainVitalSignsCharacterOfPulse-Extension",
      "description" : "Description of the character of the pulse.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsClinicalDescriptionExtension"
      },
      "name" : "NoDomainVitalSignsClinicalDescription-Extension",
      "description" : "Narrative description about the pulse or heart beat.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsClothingStateExtension"
      },
      "name" : "NoDomainVitalSignsClothingState-Extension",
      "description" : "Description of the state of dress of the person at the time of weighing.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsClothingStateValueSet"
      },
      "name" : "NoDomainVitalSignsClothingState-ValueSet",
      "description" : "Codes representing level of clothing",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsConfoundingFactorExtension"
      },
      "name" : "NoDomainVitalSignsConfoundingFactor-Extension",
      "description" : "Confounding factor is for comments on and records of other incidental factors that may be affect interpretation of the observation, not captured in other fields",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsCuffSizeExtension"
      },
      "name" : "NoDomainVitalSignsCuffSize-Extension",
      "description" : "The size of the cuff used for blood pressure measurement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsCuffsizeValueSet"
      },
      "name" : "NoDomainVitalSignsCuffsize-ValueSet",
      "description" : "Codes representing cuff size",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsDaysSinceMenstruationStartExtension"
      },
      "name" : "NoDomainVitalSignsDaysSinceMenstruationStart-Extension",
      "description" : "Current day of the menstrual cycle.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsDiastolicEndPointExtension"
      },
      "name" : "NoDomainVitalSignsDiastolicEndPoint-Extension",
      "description" : "Record which Korotkoff sound is used for determining diastolic pressure using auscultative method.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsDiastolicEndPointValueSet"
      },
      "name" : "NoDomainVitalSignsDiastolicendPoint-ValueSet",
      "description" : "Codes representing Diastolic end point",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsFiO2Extension"
      },
      "name" : "NoDomainVitalSignsFiO2-Extension",
      "description" : "Fraction of oxygen in inspired air.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsFlowExtension"
      },
      "name" : "NoDomainVitalSignsFlow-Extension",
      "description" : "Oxygen flow rate given to an individual.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsHeartRateBodySiteValueSet"
      },
      "name" : "NoDomainVitalSignsHeartRateBodySite-ValueSet",
      "description" : "Codes representing body site for heart rate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsHeartRateMeasurementMethodValueSet"
      },
      "name" : "NoDomainVitalSignsHeartRateMeasurementMethod-ValueSet",
      "description" : "Codes representing measurement method for HeartRate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsHeartRatePulseBodyPositionExtension"
      },
      "name" : "NoDomainVitalSignsHeartRatePulseBodyPosition-Extension",
      "description" : "Record which Korotkoff sound is used for determining diastolic pressure using auscultative method.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsHeartRatePulseBodyPositionValueSet"
      },
      "name" : "NoDomainVitalSignsHeartRatePulseBodyPosition-ValueSet",
      "description" : "Codes representing body position for heart rate or Pulse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsHeartRhythmIrregularityExtension"
      },
      "name" : "NoDomainVitalSignsHeartRhythmIrregularity-Extension",
      "description" : "Patterns  of the  heart beat.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsHeartRhythmIrregularityValueSet"
      },
      "name" : "NoDomainVitalSignsHeartRhythmIrregularity-ValueSet",
      "description" : "Codes representing heart rhythm irregularity for heart rate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension"
      },
      "name" : "NoDomainVitalSignsInspiredOxygen-Extension",
      "description" : "Details of the amount of oxygen available to the subject at the time of observation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsMethodofOxygenDeliveryExtension"
      },
      "name" : "NoDomainVitalSignsMethodofOxygenDelivery-Extension",
      "description" : "The method used to deliver the oxygen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsOnAirExtension"
      },
      "name" : "NoDomainVitalSignsOnAir-Extension",
      "description" : "The patient is receiving air, equivalent to 21% O₂ or 0.21 FiO₂ and an oxygen flow rate of 0 litres per minute.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsPercentO2Extension"
      },
      "name" : "NoDomainVitalSignsPercentO2-Extension",
      "description" : "Percentage of oxygen in inspired air.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsPulseBodySiteValueSet"
      },
      "name" : "NoDomainVitalSignsPulseBodySite-ValueSet",
      "description" : "Codes representing body site for pulse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsPulseMeasurementMethodValueSet"
      },
      "name" : "NoDomainVitalSignsPulseMeasurementMethod-ValueSet",
      "description" : "Codes representing measurement method for HeartRate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsPulseRhythmExtension"
      },
      "name" : "NoDomainVitalSignsPulseRhythm-Extension",
      "description" : "Regularity of the pulse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsPulseRhythmValueSet"
      },
      "name" : "NoDomainVitalSignsPulseRhythm-ValueSet",
      "description" : "Codes representing  rhythm of Pulse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsPulseRhythmIrregularityExtension"
      },
      "name" : "NoDomainVitalSignsPulseRhythmIrregularity-Extension",
      "description" : "More specific pattern of an irregular pulse or heart beat.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsPulseRhythmIrregularityValueSet"
      },
      "name" : "NoDomainVitalSignsPulseRhythmIrregularity-ValueSet",
      "description" : "Codes representing heart rhythm irregularity for Pulse",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsRespirationDepthExtension"
      },
      "name" : "NoDomainVitalSignsRespirationDepth-Extension",
      "description" : "The depth of spontaneous breathing.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsRespirationRateBodyPositionExtension"
      },
      "name" : "NoDomainVitalSignsRespirationRateBodyPosition-Extension",
      "description" : "The body position of the individual during the observation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsRespirationRateBodyPositionValueSet"
      },
      "name" : "NoDomainVitalSignsRespirationRateBodyPosition-ValueSet",
      "description" : "Codes representing body position for respiration rate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsRespirationRateDepthValueSet"
      },
      "name" : "NoDomainVitalSignsRespirationRateDepth-ValueSet",
      "description" : "Codes representing depth for respiration rate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsRespirationRegularityExtension"
      },
      "name" : "NoDomainVitalSignsRespirationRegularity-Extension",
      "description" : "The regularity of spontaneous breathing.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsRespirationRegularityValueSet"
      },
      "name" : "NoDomainVitalSignsRespirationRegularity-ValueSet",
      "description" : "Codes representing Respiration Regularity",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsSleepStatusExtension"
      },
      "name" : "NoDomainVitalSignsSleepStatus-Extension",
      "description" : "Sleep status - supports interpretation of 24 hour ambulatory blood pressure records.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsSleepStatusValueSet"
      },
      "name" : "NoDomainVitalSignsSleepStatus-ValueSet",
      "description" : "Codes representing Sleep Status",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsSpontaneousBreathingExtension"
      },
      "name" : "NoDomainVitalSignsSpontaneousBreathing-Extension",
      "description" : "A narrative description about the spontaneous breathing of the individual.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/NoDomainVitalSignsSpontaneousBreathingValueSet"
      },
      "name" : "NoDomainVitalSignsSpontaneousBreathing-ValueSet",
      "description" : "Codes representing Respiration Spontaneous breathing",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoDomainVitalSignsTiltExtension"
      },
      "name" : "NoDomainVitalSignsTilt-Extension",
      "description" : "The craniocaudal tilt of the surface on which the person is lying at the time of measurement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/afa23"
      },
      "name" : "Organization details of afa23",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/cdp1000240"
      },
      "name" : "Patient details of cdp1000240",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/cdp1000808"
      },
      "name" : "Patient details of cdp1000808",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agb104"
      },
      "name" : "Practioner details of agb104",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/agb30"
      },
      "name" : "PractitionerRole details of agb30",
      "exampleBoolean" : true
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "download.html"
        }],
        "nameUrl" : "download.html",
        "title" : "Download",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "licence_legal.html"
        }],
        "nameUrl" : "licence_legal.html",
        "title" : "Licence Legal",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "VKP-mapping.html"
        }],
        "nameUrl" : "VKP-mapping.html",
        "title" : "VKP Mapping",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```

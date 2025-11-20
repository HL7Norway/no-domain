# NoDomainVitalSignsBloodpressureMeanArterialFormula-Extension - v0.9.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsBloodpressureMeanArterialFormula-Extension**

## Extension: NoDomainVitalSignsBloodpressureMeanArterialFormula-Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension | *Version*:0.9.2 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension |

Formula used to calculate the pressure.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-domain-VitalSigns-Observation-bloodpressure Profile](StructureDefinition-no-domain-VitalSigns-Observation-bloodpressure.md)
* Examples for this Extension: [Observation/no-blood-pressure-create](Observation-no-blood-pressure-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension.csv), [Excel](StructureDefinition-NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension.xlsx), [Schematron](StructureDefinition-NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension",
  "version" : "0.9.2",
  "name" : "NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension",
  "title" : "NoDomainVitalSignsBloodpressureMeanArterialFormula-Extension",
  "status" : "draft",
  "date" : "2025-01-28",
  "publisher" : "HL7 Norway",
  "contact" : [
    {
      "name" : "HL7 Norway",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.no"
        }
      ]
    }
  ],
  "description" : "Formula used to calculate the pressure.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "NO",
          "display" : "Norway"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Observation"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsBloodpressureMeanArterialFormulaExtension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```

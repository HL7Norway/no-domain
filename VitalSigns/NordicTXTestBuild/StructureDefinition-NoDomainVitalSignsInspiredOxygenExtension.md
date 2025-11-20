# NoDomainVitalSignsInspiredOxygen-Extension - v0.9.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsInspiredOxygen-Extension**

## Extension: NoDomainVitalSignsInspiredOxygen-Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension | *Version*:0.9.2 |
| Draft as of 2025-01-28 | *Computable Name*:NoDomainVitalSignsInspiredOxygenExtension |

Details of the amount of oxygen available to the subject at the time of observation.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-domain-VitalSigns-Observation-oxygensaturation Profile](StructureDefinition-no-domain-VitalSigns-Observation-oxygensaturation.md) and [no-domain-VitalSigns-Observation-respirationrate Profile](StructureDefinition-no-domain-VitalSigns-Observation-respirationrate.md)
* Examples for this Extension: [Observation/no-oxygen-saturation-create](Observation-no-oxygen-saturation-create.md) and [Observation/no-respiratory-rate-create](Observation-no-respiratory-rate-create.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.domain.vitalsigns|current/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoDomainVitalSignsInspiredOxygenExtension.csv), [Excel](StructureDefinition-NoDomainVitalSignsInspiredOxygenExtension.xlsx), [Schematron](StructureDefinition-NoDomainVitalSignsInspiredOxygenExtension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoDomainVitalSignsInspiredOxygenExtension",
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension",
  "version" : "0.9.2",
  "name" : "NoDomainVitalSignsInspiredOxygenExtension",
  "title" : "NoDomainVitalSignsInspiredOxygen-Extension",
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
  "description" : "Details of the amount of oxygen available to the subject at the time of observation.",
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
        "id" : "Extension.extension:Flow",
        "path" : "Extension.extension",
        "sliceName" : "Flow",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFlowExtension"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:FiO2",
        "path" : "Extension.extension",
        "sliceName" : "FiO2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsFiO2Extension"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:PrecentO2",
        "path" : "Extension.extension",
        "sliceName" : "PrecentO2",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsPercentO2Extension"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:OnAir",
        "path" : "Extension.extension",
        "sliceName" : "OnAir",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsOnAirExtension"
            ]
          }
        ]
      },
      {
        "id" : "Extension.extension:MethodofOxygenDelivery",
        "path" : "Extension.extension",
        "sliceName" : "MethodofOxygenDelivery",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsMethodofOxygenDeliveryExtension"
            ]
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/no-domain/vitalsigns/StructureDefinition/NoDomainVitalSignsInspiredOxygenExtension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```

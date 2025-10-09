# NoDomainVitalSignsBodyTempBodySite-ValueSet - v0.9.61

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsBodyTempBodySite-ValueSet**

## ValueSet: NoDomainVitalSignsBodyTempBodySite-ValueSet 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBodyTempBodySiteValueSet | *Version*:0.9.61 | |
| *Standards status:*[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NoDomainVitalSignsBodyTempBodySiteValueSet |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | | |

 
Codes representing body site for body temperature 

 **References** 

* [no-domain-VitalSigns-Observation-bodytemp Profile](StructureDefinition-no-domain-VitalSigns-Observation-bodytemp.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 13 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "NoDomainVitalSignsBodyTempBodySiteValueSet",
  "meta" : {
    "lastUpdated" : "2025-01-28T00:00:00+00:00",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "oo"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "draft"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBodyTempBodySiteValueSet",
  "version" : "0.9.61",
  "name" : "NoDomainVitalSignsBodyTempBodySiteValueSet",
  "title" : "NoDomainVitalSignsBodyTempBodySite-ValueSet",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-10-09T19:58:38+00:00",
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
  "description" : "Codes representing body site for body temperature",
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
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "91470000",
            "display" : "Armhule"
          },
          {
            "code" : "34402009",
            "display" : "Endetarm"
          },
          {
            "code" : "39937001",
            "display" : "Hud"
          },
          {
            "code" : "59820001",
            "display" : "Intravaskulært"
          },
          {
            "code" : "26893007",
            "display" : "Lyske"
          },
          {
            "code" : "122861001",
            "display" : "Munn"
          },
          {
            "code" : "71836000",
            "display" : "Nesesvelg"
          },
          {
            "code" : "42859004",
            "display" : "Øre"
          },
          {
            "code" : "52795006",
            "display" : "Panne"
          },
          {
            "code" : "76784001",
            "display" : "Skjede"
          },
          {
            "code" : "32849002",
            "display" : "Spiserør"
          },
          {
            "code" : "450721000",
            "display" : "Tinning"
          },
          {
            "code" : "89837001",
            "display" : "Urinblære"
          }
        ]
      }
    ]
  }
}

```

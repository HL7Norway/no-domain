# NoDomainVitalSignsRespirationRateBodyPosition-ValueSet - v0.9.71

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsRespirationRateBodyPosition-ValueSet**

## ValueSet: NoDomainVitalSignsRespirationRateBodyPosition-ValueSet 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsRespirationRateBodyPositionValueSet | *Version*:0.9.71 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NoDomainVitalSignsRespirationRateBodyPositionValueSet |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | | |

 
Codes representing body position for respiration rate 

 **References** 

* [NoDomainVitalSignsRespirationRateBodyPosition-Extension](StructureDefinition-NoDomainVitalSignsRespirationRateBodyPositionExtension.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "NoDomainVitalSignsRespirationRateBodyPositionValueSet",
  "meta" : {
    "lastUpdated" : "2025-01-28T00:00:00+00:00",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
    "valueCode" : "fhir"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "draft"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsRespirationRateBodyPositionValueSet",
  "version" : "0.9.71",
  "name" : "NoDomainVitalSignsRespirationRateBodyPositionValueSet",
  "title" : "NoDomainVitalSignsRespirationRateBodyPosition-ValueSet",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-03-07T08:52:42+00:00",
  "publisher" : "HL7 Norway",
  "contact" : [{
    "name" : "HL7 Norway",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.hl7.no"
    }]
  }],
  "description" : "Codes representing body position for respiration rate",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1240000",
        "display" : "Mageleie"
      },
      {
        "code" : "40199007",
        "display" : "Ryggleie"
      },
      {
        "code" : "33586001",
        "display" : "Sittende"
      },
      {
        "code" : "10904000",
        "display" : "oppreist stilling"
      },
      {
        "code" : "272580008",
        "display" : "Tilbakelent"
      }]
    }]
  }
}

```

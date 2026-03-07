# NoDomainVitalSignsBodyExposure-ValueSet - v0.9.71

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsBodyExposure-ValueSet**

## ValueSet: NoDomainVitalSignsBodyExposure-ValueSet 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBodyExposureValueSet | *Version*:0.9.71 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NoDomainVitalSignsBodyExposureValueSet |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | | |

 
Codes representing body exposure 

 **References** 

* [NoDomainVitalSignsBodyExposure-Extension](StructureDefinition-NoDomainVitalSignsBodyExposureExtension.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

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
  "id" : "NoDomainVitalSignsBodyExposureValueSet",
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
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBodyExposureValueSet",
  "version" : "0.9.71",
  "name" : "NoDomainVitalSignsBodyExposureValueSet",
  "title" : "NoDomainVitalSignsBodyExposure-ValueSet",
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
  "description" : "Codes representing body exposure",
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
      "version" : "http://snomed.info/sct/51000202101",
      "concept" : [{
        "code" : "5671000202107",
        "display" : "Naken"
      },
      {
        "code" : "5601000202102",
        "display" : "Økt påkledning/tildekking"
      },
      {
        "code" : "5611000202100",
        "display" : "Passende påkledning/tildekking"
      },
      {
        "code" : "5591000202105",
        "display" : "Redusert påkledning/tildekking"
      }]
    }]
  }
}

```

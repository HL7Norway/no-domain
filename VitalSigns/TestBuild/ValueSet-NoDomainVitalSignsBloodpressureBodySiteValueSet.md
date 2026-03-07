# NoDomainVitalSignsBloodpressureBodySite-ValueSet - v0.9.71

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoDomainVitalSignsBloodpressureBodySite-ValueSet**

## ValueSet: NoDomainVitalSignsBloodpressureBodySite-ValueSet 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBloodpressureBodySiteValueSet | *Version*:0.9.71 | |
| * Standards status: *[Draft](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NoDomainVitalSignsBloodpressureBodySiteValueSet |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | | |

 
Codes representing body site for blood pressure 

 **References** 

* [no-domain-VitalSigns-Observation-bloodpressure Profile](StructureDefinition-no-domain-VitalSigns-Observation-bloodpressure.md)

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
  "id" : "NoDomainVitalSignsBloodpressureBodySiteValueSet",
  "meta" : {
    "lastUpdated" : "2025-01-28T00:00:00+00:00",
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [{
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
  }],
  "url" : "http://hl7.no/fhir/no-domain/vitalsigns/ValueSet/NoDomainVitalSignsBloodpressureBodySiteValueSet",
  "version" : "0.9.71",
  "name" : "NoDomainVitalSignsBloodpressureBodySiteValueSet",
  "title" : "NoDomainVitalSignsBloodpressureBodySite-ValueSet",
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
  "description" : "Codes representing body site for blood pressure",
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
        "code" : "6685009",
        "display" : "Ankel, høyre"
      },
      {
        "code" : "51636004",
        "display" : "Ankel, venstre"
      },
      {
        "code" : "125685002",
        "display" : "Finger"
      },
      {
        "code" : "2402003",
        "display" : "Fotrygg"
      },
      {
        "code" : "9736006",
        "display" : "Håndledd, høyre"
      },
      {
        "code" : "5951000",
        "display" : "Håndledd, venstre"
      },
      {
        "code" : "51114001",
        "display" : "Intraarterielt"
      },
      {
        "code" : "11207009",
        "display" : "Lår, høyre"
      },
      {
        "code" : "61396006",
        "display" : "Lår, venstre"
      },
      {
        "code" : "368209003",
        "display" : "Overarm, høyre"
      },
      {
        "code" : "368208006",
        "display" : "Overarm, venstre"
      },
      {
        "code" : "29707007",
        "display" : "Tå"
      }]
    }]
  }
}

```

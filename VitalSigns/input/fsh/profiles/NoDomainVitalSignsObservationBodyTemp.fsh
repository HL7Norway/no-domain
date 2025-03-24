Profile: NoDomainVitalSignsObservationBodyTemp
Parent: $bodytemp
Id: NoDomainVitalSignsObservationBodyTemp
Title: "NO Domain VitalSigns Observation - Body Temperature"
Description: "Domain profile for Norwegian Vital Signs Observation Body Temperature information. To be used for recording the measurement of an individual's body temperature. which is a surrogate for the core body temperature of the individual."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBodyTemp"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-01-28"
* ^copyright = "Some content in this profile builds on the body temperature archetype: Kroppstemperatur, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.1855"
* ^purpose = "Domain profile for Norwegian  VitalSigns Observation Body Temperature information. Defined by The Norwegian Directorate of health and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Body Temperature."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains   
    NoDomainVitalSignsObservationConfoundingFactor  named confoundingFactor 0..1 and
    NoDomainVitalSignsObservationDaysSinceMenstruationStart  named daysSinceMenstruationStart 0..1 and
    NoDomainVitalSignsObservationBodyExposure  named bodyExposure 0..1 and
    NoDomainVitalSignsObservationActiveHeating  named activeHeating 0..1
* extension[bodyExposure] ^short = "The degree of exposure of the individual at the time of measurement."
* extension[bodyExposure] ^definition = "The degree of exposure of the individual at the time of measurement."
* extension[daysSinceMenstruationStart] ^short = "Current day of the menstrual cycle."
* extension[daysSinceMenstruationStart] ^definition = "Current day of the menstrual cycle."
* extension[activeHeating] ^short = "description of the conditions applied"
* extension[activeHeating] ^definition = "Narrative description of the conditions applied to the subject that might influence their measured body temperature."
* extension[confoundingFactor] ^definition = "Additional issues or factors that may impact on the measurement of body temperature, not captured in other fields."
* extension[confoundingFactor] ^short = "Additional issues or factors that may impact for the measurement"
* subject only Reference(Patient or $no-basis-Patient)

* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or CareTeam or Patient or RelatedPerson or $no-basis-Practitioner or $no-basis-PractitionerRole)
* performer[organization] only Reference(Organization or $no-basis-Organization)
* valueQuantity ^short = "The measured temperature."

* code.coding 1..
* bodySite from NoDomainVitalSignsObservationBodyTempBodySite (extensible)

* bodySite.coding from NoDomainVitalSignsObservationBodyTempBodySite (extensible)
* bodySite.coding.system 1..
* bodySite.coding.code 1..

* code.coding contains BodyTempSnomedCode 0..1
* code.coding[BodyTempSnomedCode] ^definition = "body Height Snomed Code"
* code.coding[BodyTempSnomedCode] ^short = "body Height Snomed Code"
* code.coding[BodyTempSnomedCode].system 1..1
* code.coding[BodyTempSnomedCode].system = $sct
* code.coding[BodyTempSnomedCode].code = #276885007
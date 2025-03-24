Profile: NoDomainVitalSignsObservationPulse
Parent: $heartrate
Id: NoDomainVitalSignsObservationPulse
Title: "NO Domain VitalSigns Observation - Pulse"
Description: """Domain profile for Norwegian Vital Signs Observation Pulse information. To be used for recording the number of times your arteries create a noticeable pulse due to increase in blood pressure. This profile describes how to use a SNOMED code to indicate that the measurement is actually a pulse measurement at systemic artery, and not a general heart rate measurement that can be measured both as pulse and the actual heart beat."""
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationPulse"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2025-01-28"
* ^copyright = "Some content in this profile builds on the heart rate archetype: Puls/Hjertefrekvens, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2293"
* ^purpose = "Domain profile for Norwegian  VitalSigns Observation pulse information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Pulse."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoDomainVitalSignsObservationPulseRhythm  named pulseRhythm 0..1 and
    NoDomainVitalSignsObservationConfoundingFactor  named confoundingFactor 0..1 and
    NoDomainVitalSignsObservationClinicalDescription  named clinicalDescription 0..1 and
    NoDomainVitalSignsObservationCharacterOfPulse  named characterOfPulse 0..1 and
    NoDomainVitalSignsObservationHeartRatePulseBodyPosition  named BodyPosition 0..1 and
    NoDomainVitalSignsObservationPulseRhythmIrregularity  named pulseRythmIrregularity 0..1
* extension[pulseRhythm] ^short = "Regularity of the pulse"
* extension[pulseRhythm] ^definition = "Regularity of the pulse"
* extension[clinicalDescription] ^short = "Narrative description about the pulse"
* extension[clinicalDescription] ^definition = "Narrative description about the pulse"
* extension[characterOfPulse] ^short = "Description of the character of the pulse"
* extension[characterOfPulse] ^definition = "Description of the character of the pulse"
* extension[BodyPosition] ^short = "The body position of the subject during the observation."
* extension[BodyPosition] ^definition = "The body position of the subject during the observation."
* extension[pulseRythmIrregularity] ^short = "More specific pattern of an irregular pulse"
* extension[pulseRythmIrregularity] ^definition = "More specific pattern of an irregular pulse"
* extension[confoundingFactor] ^definition = "Narrative description about any incidental factors that may affect interpretation of the physical findings.
Comment: For example, presence of a pacemaker, level of anxiety; pain or fever etc."
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
* value[x] ^slicing.rules = #open
* valueQuantity ^short = "The rate of the pulse, measured in beats per minute."
* valueQuantity ^definition = "The rate of the pulse , measured in beats per minute."

* bodySite from NoDomainVitalSignsObservationPulseBodySite (extensible)

* bodySite.coding from NoDomainVitalSignsObservationPulseBodySite (extensible)

* code.coding contains PulseSNOMEDCode 0..1
* code.coding[PulseSNOMEDCode].system 1..
* code.coding[PulseSNOMEDCode].system = "http://snomed.info/sct" (exactly)
* code.coding[PulseSNOMEDCode].code 1..
* code.coding[PulseSNOMEDCode].code = #78564009 (exactly)
* method from NoDomainVitalSignsObservationPulseMeasurementMethod (extensible)
* method.coding from NoDomainVitalSignsObservationPulseMeasurementMethod (extensible)
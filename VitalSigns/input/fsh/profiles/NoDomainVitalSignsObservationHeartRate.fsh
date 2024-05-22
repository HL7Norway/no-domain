Profile: NoDomainVitalSignsObservationHeartRate
Parent: $heartrate
Id: NoDomainVitalSignsObservationHeartRate
Title: "NO Domain VitalSigns Observation - Heart Rate"
Description: """Base profile for Norwegian Vital Signs Observation Heart Rate information.  
Use to record the presence or absence of a heart beat."""
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeartRate"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^purpose = "Basisprofile for Norwegian  VitalSigns Observation Heart Rate information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information and further explanation of the use for the data-elements in a Norwegian VitalSigns Observation Heart Rate."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
   NoDomainVitalSignsObservationHeartRhythmIrregularity  named heartRhythmIrregularity 0..1 and
   NoDomainVitalSignsObservationConfoundingFactor  named confoundingFactor 0..1 and
   NoDomainVitalSignsObservationClinicalDescription  named clinicalDescription 0..1 and
   NoDomainVitalSignsObservationHeartRatePulseBodyPosition  named BodyPosition 0..1 


* extension[clinicalDescription] ^short = "Narrative description about the heart beat."
* extension[clinicalDescription] ^definition = "Narrative description about the heart beat."
* extension[confoundingFactor] ^definition = "Narrative description about any incidental factors that may affect interpretation of the physical findings.
Comment: For example, presence of a pacemaker, level of anxiety; pain or fever etc."
* extension[confoundingFactor] ^short = "Additional issues or factors that may impact for the measurement"
* extension[BodyPosition] ^short = "The body position of the subject during the observation."
* extension[BodyPosition] ^definition = "The body position of the subject during the observation."
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
* valueQuantity ^short = "The rate of the  heart beat, measured in beats per minute."
* valueQuantity ^definition = "The rate of the heart beat, measured in beats per minute."

* bodySite from NoDomainVitalSignsObservationHeartRateBodySite (extensible)

* bodySite.coding from NoDomainVitalSignsObservationHeartRateBodySite (extensible)

* code.coding contains HeartRateSNOMEDCode 0..1
* code.coding[HeartRateSNOMEDCode].system 1..
* code.coding[HeartRateSNOMEDCode].system = "http://snomed.info/sct" (exactly)
* code.coding[HeartRateSNOMEDCode].code 1..
* code.coding[HeartRateSNOMEDCode].code = #364075005 (exactly)
* method from NoDomainVitalSignsObservationHeartRateMeasurementMethod (extensible)
* method.coding from NoDomainVitalSignsObservationHeartRateMeasurementMethod (extensible)
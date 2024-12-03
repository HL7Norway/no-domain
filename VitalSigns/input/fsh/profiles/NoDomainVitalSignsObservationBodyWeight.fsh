Profile: NoDomainVitalSignsObservationBodyWeight
Parent: $bodyweight
Id: NoDomainVitalSignsObservationBodyWeight
Title: "NO Domain VitalSigns Observation - Body Weight"
Description: "Base profile for Norwegian Vital Signs Observation Body Weight information. To be used for recording the actual measurement of body weight, including when the individual is missing a body part due to a congenital cause or after surgical removal."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationBodyWeight"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^copyright ="Some content in this profile builds on the blood pressure archetype: Blodtrykk, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-02]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2165"
* ^purpose = "To record the body weight of an individual - both actual and approximate."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoDomainVitalSignsObservationClothingState  named clothingState 0..1 and
    NoDomainVitalSignsObservationConfoundingFactor  named confoundingFactor 0..1
* extension[clothingState] ^short = "Description of the state of dress of the person at the time of weighing."
* extension[clothingState] ^definition = "Description of the state of dress of the person at the time of weighing."
* extension[confoundingFactor] ^definition = "Record any issues or factors that may impact on the measurement of body weight eg timing in menstrual cycle, timing of recent bowel motion or noting of amputation."
* extension[confoundingFactor] ^short = "Additional issues or factors that may impact for the measurement"
* code.coding contains BodyWeightSnomedCode 0..1
* code.coding[BodyWeightSnomedCode].code = #27113001 (exactly)
* code.coding[BodyWeightSnomedCode].system = $sct (exactly)
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
* valueQuantity ^short = "The weight of the individual."
* valueQuantity ^definition = "The weight of the individual."


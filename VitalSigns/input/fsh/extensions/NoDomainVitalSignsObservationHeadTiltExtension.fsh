Extension: NoDomainVitalSignsObservationHeadTilt
Id: NoDomainVitalSignsObservationHeadTilt
Description: "The craniocaudal tilt of the surface on which the person is lying at the time of measurement."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeadTilt"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-01"
* ^context.type = #element
* ^context.expression = "Observation"
* url = "http://hl7.no/fhir/StructureDefinition/NoDomainVitalSignsObservationHeadTilt" (exactly)
* value[x] only Quantity
* value[x] ^short = "head tilt in degrees"
* value[x] ^definition = "value range can be between -90 and +90"
* value[x].value ^short = "head tilt in degrees"
* value[x].value ^definition = "value range can be between -90 and +90"
* value[x] ^minValueQuantity = -90 'deg' "deg"
* value[x] ^maxValueQuantity = 90 'deg' "deg"
* value[x].unit = "deg" (exactly)
* value[x].code = #deg
* value[x].system = "http://unitsofmeasure.org"
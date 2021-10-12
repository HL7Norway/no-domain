Extension: NoDomainVitalSignsObservationBodyMassIndexFormulaExtension
Id: NoDomainVitalSignsObservationBodyMassIndexFormula
Description: "Formula used to derive the body mass index."
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bodymassindex-formulaExtension"
* ^version = "0.9.0000"
* ^status = #draft
* ^date = "2021-05-28"
* ^context.type = #element
* ^context.expression = "Observation"
* . ..1
* url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-bodymassindex-formulaExtension" (exactly)
* value[x] only string
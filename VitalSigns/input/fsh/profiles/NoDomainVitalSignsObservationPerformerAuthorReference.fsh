Profile: NoDomainVitalSignsObservationPerformerAuthorReference
Parent: Reference
Id: NoDomainVitalSignsObservationPerformerAuthorReference
* ^url = "http://hl7.no/fhir/StructureDefinition/no-domain-vitalsignsobservation-performerauthorreference"
* ^status = #draft
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    HPR 0..1 and
    FNR 0..1 and
    DNR 0..1
* identifier[HPR].use ..0
* identifier[HPR].type ..0
* identifier[HPR].system 1..
* identifier[HPR].system = "urn:oid:2.16.578.1.12.4.1.4.4" (exactly)
* identifier[HPR].value 1..
* identifier[HPR].period ..0
* identifier[HPR].assigner ..0
* identifier[FNR] ^short = "Norwegian FNR"
* identifier[FNR].system 1..
* identifier[FNR].system = "urn:oid:2.16.578.1.12.4.1.4.1" (exactly)
* identifier[FNR].system ^short = "The identification of FNR"
* identifier[FNR].system ^definition = "The identification of FNR"
* identifier[FNR].value 1..
* identifier[DNR].system 1..
* identifier[DNR].system = "urn:oid:2.16.578.1.12.4.1.4.2" (exactly)
* identifier[DNR].system ^short = "The identification of the D-nummer"
* identifier[DNR].system ^definition = "The identification of the D-nummer"
* identifier[DNR].value 1..
* identifier[DNR].value ^short = "The actual D-nummer"
* identifier[DNR].value ^definition = "The actual D-nummer"
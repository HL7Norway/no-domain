# Results from Swedish FHIR HAckathon Vitalis 2026

## Problems solved

Terms are moving from Norwegian edition of SNOMED Norwegian edition to the international edition. This helps us to use these terms without error in expansion of valuesets containing those terms.

## Problems remainign

### Testing

Made a [test valueset containing a norwegian only code](https://hl7norway.github.io/no-domain/VitalSigns/TestBuild/ValueSet-NoDomainVitalSignsTestValueSet.html) (the SNOMED CT term is only present in the Norwegian edition of SNOMED CT. The term is available on the Nordic server AFAIK), this one leads to an error in the IG build process, reporting that this cannot be found.

> The code '107261000202100' is not valid in the system http://snomed.info/sct version http://snomed.info/sct/51000202101 (107261000202100)

* 107261000202100 Helsedirektoratets liste over begrep for styrkeenhet enkelt referansesett

### Error code from QA report

[Error message](https://hl7norway.github.io/no-domain/VitalSigns/TestBuild/qa.html#_github_workspace_VitalSigns_fsh-generated_resources_ValueSet-NoDomainVitalSignsTestValueSet) from the QA report on building the FHIR IG with Norwegian only SNOMED CT term.  

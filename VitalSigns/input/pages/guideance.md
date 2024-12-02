## Use of LOINC codes

In FHIR, the LOINC codes (magic value) are mandatory to indicate what category of measurement the given observation is. This is problematic in Norway as LOINC is not generally used in clinical systems in Norway. The magic value codes are to be considered as category codes and if more precise coding is needed SNOMED or other terminology are recommended to use in addition to the magic value.  

## Pulse rate vs Heart rate

In most cases pulse rate and heart rate values are considered to be clinically the same; pulse rate is treated as a "proxy" of the actual heart rate. However there are several cases where pulse rate and heart rate are treated as different measurements and differences have clinical importance. In most cases a general LOINC heart rate code to indicate both pulse rate and heart rate is good enough. For systems and clinical processes that need to differentiate the different concepts, the use of more specific SNOMED codes indicated in Observation.code slices in the no-domain-pulse and no-domain-heartrate profiles are recommended. Additional information about method and bodySite of the heart rate observation can also indicate pulse or heart rate observation.

### Conceptual model vs FHIR vital-signs profiles

The model depicts the differences in conceptual and FHIR vital signs model, including the meaning of different use of codes for handling the complex conceptual model where pulse rate and heart rate are to be differentiated.

<div>{% include puls-hr-problem.svg %}</div>

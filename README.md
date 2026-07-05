# Move Beyond One-class: Reflection upon Zero-shot Anomaly Detection and A New Evaluation Principle

Zero-shot anomaly detection (ZSAD) is commonly evaluated on one-class industrial anomaly detection benchmarks. This paper shows that this evaluation practice is fundamentally flawed: many test samples in one-class benchmarks depend on normal reference images, while ZSAD assumes that no target-domain normal reference is available.

To address this issue, we propose a ZSAD-oriented evaluation framework, construct new reference-independent benchmarks, and re-evaluate representative ZSAD methods.

See figure 1 for an illustration of the evaluation flaw.

<img width="2084" height="658" alt="image" src="https://github.com/user-attachments/assets/e1085d2f-59aa-4e41-8e47-a52b1787c949" />

## Highlights

- We identify a fundamental flaw in current ZSAD evaluation: one-class benchmarks include reference-dependent samples that are invalid under the zero-shot setting.
- We introduce the **ZSAD-oriented Evaluation Principle (ZEP)**, which confines the ZSAD anomaly scope to **Standalone Anomalies (SA)** that can be recognized without normal reference images.
- We propose the **Independence-to-Consensus Annotation Protocol (ICAP)** to reduce ambiguity and subjectivity during ZSAD annotation.
- We construct two reference-independent ZSAD benchmarks, **MVTec-AD-ZS** and **VisA-ZS**, by cleansing and re-annotating mainstream industrial anomaly detection datasets.
- We systematically re-evaluate ten representative ZSAD methods and reveal a more faithful performance landscape for this field.

## Motivation

Classic one-class industrial anomaly detection defines anomalies as deviations from a set of normal reference images. ZSAD removes these references entirely. As a result, some samples that are anomalous in one-class benchmarks may no longer be identifiable as anomalous in ZSAD, and some samples labeled normal in one-class benchmarks may contain standalone defects when viewed without reference.

This mismatch makes direct use of one-class benchmarks ill-posed for ZSAD evaluation. Our work corrects the evaluation principle before comparing methods.

## Evaluation Framework

### ZEP: ZSAD-oriented Evaluation Principle

ZEP separates industrial anomalies into:

- **Standalone Anomalies (SA):** images containing independent industrial defects that can be recognized using common sense alone, such as cracks, deformation, fracture, or surface inconsistency.
- **Logical Anomalies (LA):** images without independent defects, but violating reference-defined logical relations, such as wrong component order, missing labels, or abnormal layouts.

Under ZSAD, only SA should be treated as the target anomaly set because LA cannot be determined without normal references.

### ICAP: Independence-to-Consensus Annotation Protocol

ICAP converts one-class IAD benchmarks into ZSAD-oriented benchmarks through:

- independent annotation by multiple human annotators;
- consensus voting and review for ambiguous samples;
- removal of invalid test instances;
- modification of masks whose original annotations do not match standalone defects.

In our implementation, ICAP uses 3 first-stage annotators and 2 additional annotators for second-stage consensus review.

## New Benchmarks

We build two ZSAD-specific benchmarks from MVTec-AD and VisA.

| Benchmark | Normal Test Instances | Abnormal Test Instances | Total |
| --- | ---: | ---: | ---: |
| MVTec-AD-ZS | 382 | 906 | 1,288 |
| VisA-ZS | 783 | 941 | 1,724 |

The new benchmarks only contain test sets, following the zero-shot setting. During annotation, 29.1% of MVTec-AD test images and 20.5% of VisA test images are reprocessed.

See the [ICAP flow chart](fig/flow%20chart.pdf) for the annotation protocol.

## Re-evaluated Methods

We re-evaluate ten representative CLIP-based ZSAD methods:

- WinCLIP
- APRIL-GAN
- AnomalyCLIP
- CLIP-AD
- FiLo
- AdaCLIP
- VCP-CLIP
- AA-CLIP
- FAPrompt
- MRAD

The evaluation covers image-level anomaly classification and pixel-level anomaly localization with seven metrics: I-AUROC, I-F1, I-AP, P-AUROC, P-F1, P-AP, and P-AUPRO.

## Main Findings

- The proposed ZSAD benchmarks avoid overly pessimistic results caused by invalid one-class test instances, but they remain challenging for existing ZSAD methods.
- Switching from one-class benchmarks to ZSAD-specific benchmarks changes method rankings, showing that invalid test instances have a non-negligible effect on evaluation.
- No existing method shows a consistent advantage across both new benchmarks and all metrics.
- On MVTec-AD-ZS, MRAD achieves the best average rank, while AA-CLIP shows strong localization performance.
- On VisA-ZS, VCP-CLIP achieves the best average rank, while AdaCLIP ranks second overall.
- CLIP-AD is the most efficient method in GPU memory and inference time, but its detection performance is not the strongest.


## New benchmarks for ZSAD


### Dataset download
Due to copyright restrictions, the raw data is not publicly available at this time. If you wish to request access to the dataset, please contact us via email at wangguangpu@nudt.edu.cn. We will provide download instructions within 24 hours of receiving your request. If you do not hear back from us within this timeframe, please feel free to open an issue on our GitHub repository, and we will respond to you as soon as possible.

## Results


## Acknowledgement
We thank the great works [WinCLIP(zqhang)](https://github.com/zqhang/Accurate-WinCLIP-pytorch), [APRIL-GAN](https://github.com/ByChelsea/VAND-APRIL-GAN), [AnomalyCLIP](https://github.com/zqhang/AnomalyCLIP), [CLIP-AD](https://github.com/ByChelsea/CLIP-AD), [FiLo](https://github.com/CASIA-IVA-Lab/FiLo), [AdaCLIP](https://github.com/caoyunkang/AdaCLIP), [VCP-CLIP](https://github.com/xiaozhen228/VCP-CLIP), [AA-CLIP](https://github.com/Mwxinnn/AA-CLIP),[FAPrompt](https://github.com/mala-lab/faprompt), [MRAD](https://github.com/CROVO1026/MRAD).



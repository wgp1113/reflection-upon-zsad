# Move Beyond One-class: Reflection upon Zero-shot Anomaly Detection and A New Evaluation Principle

With emerging foundational vision-language models (VLMs) like CLIP, zero-shot anomaly detection (ZSAD) has become a heating realm in recent research on industrial anomaly detection (IAD). Existing works typically evaluate ZSAD methods on classic **one-class** IAD benchmarks, which define anomalies as deviations from normal reference images in a pure one-class normal training set.

However, the zero-shot setup of ZSAD makes the reference completely absent, which renders it impossible to discriminate some reference-dependent test instances in one-class benchmarks. This makes the current ZSAD evaluation framework ill-posed and severely misleads the comparison.

In this paper, we move beyond one-class IAD benchmarks, reform the current evaluation framework by introducing the **ZSAD-oriented Evaluation Principle (ZEP)**, construct new ZSAD benchmarks, and systematically re-evaluate ten state-of-the-art ZSAD methods.

See Figure 1 for an illustration of the evaluation flaw.

<img width="2084" height="658" alt="image" src="https://github.com/user-attachments/assets/e1085d2f-59aa-4e41-8e47-a52b1787c949" />

## Highlights

- We identify a **fundamental flaw** in the current ZSAD evaluation framework: many test instances and their ground-truth labels in one-class IAD benchmarks are no longer valid under the zero-shot paradigm.
- We introduce the **ZSAD-oriented Evaluation Principle (ZEP)**, the first specialized effort in the literature to explicitly delineate the scope of anomalies in ZSAD.
- Guided by ZEP, we propose the **Independence-to-Consensus Annotation Protocol (ICAP)** to maximally suppress ambiguity and subjectivity during ZSAD's anomaly annotation process.
- Following ZEP and ICAP, we build **MVTec-AD-ZS** and **VisA-ZS** through comprehensive cleansing and re-annotation of mainstream IAD datasets.
- Using the new ZSAD benchmarks, we conduct a comprehensive and systematic re-evaluation of ten representative ZSAD approaches.

## Motivation

Classic one-class industrial anomaly detection defines anomalies as deviations from normal reference images in the one-class training set. By contrast, ZSAD aims to perform IAD without any normal image from the target domain.

Without normal images as the reference, some anomalous/normal images in the test set of original one-class IAD benchmarks may no longer be anomalous/normal from a standalone viewpoint. As a consequence, blindly using one-class IAD benchmarks for ZSAD evaluation is ill-posed and misleading.

Motivated by the fact that correct evaluation plays a fundamental role in measuring progress and spurring realm development, this work contributes to ZSAD from the perspective of evaluation.

## Evaluation Framework

### ZEP: ZSAD-oriented Evaluation Principle

ZEP explicitly regulates the scope of anomalies in ZSAD by grouping anomalies in IAD into:

- **Standalone Anomalies (SA):** images with independent industrial defects that can be discriminated by human annotators via common sense alone.
- **Logical Anomalies (LA):** images with no independent industrial defect, but violating typical logical relations appointed by normal reference, such as component composition and layout.

In a nutshell, ZEP confines the detection scope of ZSAD to independent industrial defects in SA. Under the zero-shot paradigm, the target anomaly set is different from that under the one-class paradigm because LA are no longer meaningful when the normal reference is completely absent.

### ICAP: Independence-to-Consensus Annotation Protocol

ICAP is designed to transform frequently-used one-class IAD benchmarks into ZSAD benchmarks while suppressing the inevitable subjectivity in annotation. It consists of:

- an **Independent Annotation Protocol (IAP)**, where each annotator independently identifies standalone defects and assigns image-level and pixel-level action labels;
- a **Consensus Annotation Protocol (CAP)**, where multiple annotators reach consensus through cascade decision, discussion, and majority vote;
- removal of improper test instances whose consensus image-level labels are inconsistent with the original one-class labels;
- modification of anomaly masks that cannot precisely describe all regions of independent defects.

In our implementation, ICAP uses 3 first-stage annotators and 2 additional annotators for second-stage consensus review.

See Figure 3 for the annotation protocol.

<img width="1574" height="886" alt="image" src="https://github.com/user-attachments/assets/196e046a-aa60-4758-a426-7f46f03c6bca" />



## New Benchmarks

Guided by ZEP and ICAP, we construct new reference-independent benchmarks on the basis of MVTec-AD and VisA, the most widely-used benchmarks in recent ZSAD research.

| Benchmark | Normal Test Instances | Abnormal Test Instances | Total |
| --- | ---: | ---: | ---: |
| MVTec-AD-ZS | 382 | 906 | 1,288 |
| VisA-ZS | 783 | 941 | 1,724 |

As the zero-shot setup of ZSAD involves no normal reference from the training set, the new ZSAD benchmarks only have test sets. During annotation, 29.1% of MVTec-AD test images and 20.5% of VisA test images are reprocessed.

<img width="858" height="1068" alt="image" src="https://github.com/user-attachments/assets/cd986156-2413-4620-9d6b-6ab9148900a5" />




## Re-evaluated Methods

Under the new evaluation framework for ZSAD, we extensively re-evaluate ten representative ZSAD methods, which are either commonly used baselines or state-of-the-art methods:

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

The evaluation uses seven widely-used metrics. Image-level AUROC, F1, and AP evaluate anomaly classification, while pixel-level AUROC, F1, AP, and AUPRO evaluate anomaly localization.

## Main Findings

- The new evaluation framework and benchmarks remain challenging for existing ZSAD methods, while they avoid overly-pessimistic ZSAD evaluation results from invalid one-class benchmarks.
- The new benchmarks change the position of ZSAD methods among their peers, which implies that invalid test instances have a non-negligible impact on evaluation.
- Recent ZSAD works are making progress compared with the initial baseline, but no ZSAD method possesses a consistent advantage over its counterparts on the new ZSAD benchmarks.
- On MVTec-AD-ZS, MRAD achieves the best overall performance with the best average rank, while AA-CLIP shows strong localization performance.
- On VisA-ZS, VCP-CLIP achieves the best average rank, while AdaCLIP ranks second.
- For computational cost, CLIP-AD is the most efficient method, while MRAD and AA-CLIP strike a better balance on MVTec-AD-ZS.


### Dataset download
Due to copyright restrictions, the raw data is not publicly available at this time. If you wish to request access to the dataset, please contact us via email at wangguangpu@nudt.edu.cn. We will provide download instructions within 24 hours of receiving your request. If you do not hear back from us within this timeframe, please feel free to open an issue on our GitHub repository, and we will respond to you as soon as possible.

## Results


## Acknowledgement
We thank the great works [WinCLIP(zqhang)](https://github.com/zqhang/Accurate-WinCLIP-pytorch), [APRIL-GAN](https://github.com/ByChelsea/VAND-APRIL-GAN), [AnomalyCLIP](https://github.com/zqhang/AnomalyCLIP), [CLIP-AD](https://github.com/ByChelsea/CLIP-AD), [FiLo](https://github.com/CASIA-IVA-Lab/FiLo), [AdaCLIP](https://github.com/caoyunkang/AdaCLIP), [VCP-CLIP](https://github.com/xiaozhen228/VCP-CLIP), [AA-CLIP](https://github.com/Mwxinnn/AA-CLIP),[FAPrompt](https://github.com/mala-lab/faprompt), [MRAD](https://github.com/CROVO1026/MRAD).


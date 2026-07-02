# Move Beyond One-class: Reflection upon Zero-shot Anomaly Detection and A New Evaluation Principle

## Abstract
With emerging foundational vision-language models (VLMs) like CLIP, zero-shot anomaly detection (ZSAD) has become a heating realm in recent research on industrial anomaly detection (IAD). To verify their progress, existing works typically evaluate ZSAD methods on classic \textit{one-class} IAD benchmarks, which define anomalies as deviations from normal reference images in a pure one-class normal training set. However, we identify a \textbf{{fundamental flaw}} in the above evaluation framework: The zero-shot setup of ZSAD makes the reference completely absent, which renders it impossible to discriminate some reference-dependent test instances in one-class benchmarks (e.g., logical anomalies). This flaw makes current ZSAD evaluation framework ill-posed and severely misleads the comparison. In this paper, we move beyond one-class IAD benchmarks, and make three-fold contributions to ZSAD from the perspective of evaluation: 1) We thoroughly reflect upon ZSAD and reform its current evaluation framework by introducing the ZSAD-oriented Evaluation Principle (ZEP). Specifically, to the best of our knowledge, ZEP is the first principle in the ZSAD literature that explicitly regulates ZSAD's detection scope to prevent invalid test instances. Guided by this principle, we propose a novel Independence-to-Consensus Annotation Protocol (ICAP), which intends to maximally suppress the ambiguity and subjectivity during ZSAD's anomaly annotation process. Second, following the proposed ZEP and ICAP, we have constructed new ZSAD benchmarks that are specifically tailored for the zero-shot setup via comprehensive cleansing and re-annotation of mainstream IAD datasets, providing a more reliable data foundation for ZSAD evaluation. Third, using new ZSAD benchmarks, we systematically re-evaluate ten state-of-the-art ZSAD methods. Through extensive comparison and detailed analysis, we unveil the true performance landscape of the ZSAD realm, which provides valuable insights into advancing ZSAD.



/***
<!-- <div align="center">
<img width="1400" height="1194" alt="image" src="https://github.com/user-attachments/assets/6beb61db-fd00-4c79-8c1d-a4389c9763b3" />
</div>

## New benchmarks for ZSAD


### Dataset download
Due to copyright restrictions, the raw data is not publicly available at this time. If you wish to request access to the dataset, please contact us via email at wangguangpu@nudt.edu.cn. We will provide download instructions within 24 hours of receiving your request. If you do not hear back from us within this timeframe, please feel free to open an issue on our GitHub repository, and we will respond to you as soon as possible.

## Results


## Acknowledgement
We thank the great works [WinCLIP(zqhang)](https://github.com/zqhang/Accurate-WinCLIP-pytorch), [APRIL-GAN](https://github.com/ByChelsea/VAND-APRIL-GAN), [AnomalyCLIP](https://github.com/zqhang/AnomalyCLIP), [CLIP-AD](https://github.com/ByChelsea/CLIP-AD), [FiLo](https://github.com/CASIA-IVA-Lab/FiLo), [AdaCLIP](https://github.com/caoyunkang/AdaCLIP), [VCP-CLIP](https://github.com/xiaozhen228/VCP-CLIP), [AA-CLIP](https://github.com/Mwxinnn/AA-CLIP),[FAPrompt](https://github.com/mala-lab/faprompt), [MRAD](https://github.com/CROVO1026/MRAD).



import os
from .base_dataset import BaseDataset
from config import DATA_ROOT

'''dataset source: https://paperswithcode.com/dataset/mvtecad'''

KSDD2_CLS_NAMES = ['surface']
# MVTEC_CLS_NAMES = [
#     'bottle', 'cable', 'capsule', 'carpet', 'grid',
#     'hazelnut', 'leather', 'screw',
#     'tile', 'toothbrush', 'transistor', 'wood', 'zipper',
# ]
# MVTEC_CLS_NAMES = ['cable', 'capsule', 'screw']
# MVTEC_ROOT = os.path.join(DATA_ROOT, 'zsad_datasets', 'mvtec_zsad_common_sense')
# MVTEC_ROOT = os.path.join(DATA_ROOT, 'zsad_datasets', 'mvtec_zsad_extended')
KSDD2_ROOT = os.path.join('/home/dell/wgp/datasets', 'ksdd2')

class KSDD2Dataset(BaseDataset):
    def __init__(self, transform, target_transform, clsnames=KSDD2_CLS_NAMES, aug_rate=0.2, root=KSDD2_ROOT, training=True):
        super(KSDD2Dataset, self).__init__(
            clsnames=clsnames, transform=transform, target_transform=target_transform,
            root=root, aug_rate=aug_rate, training=training
        )

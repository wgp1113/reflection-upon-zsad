# import os
# import json
# import pandas as pd
#
#
# class VisASolver(object):
#     CLSNAMES = [
#         'candle', 'capsules', 'cashew', 'chewinggum', 'fryum',
#         'macaroni1', 'macaroni2', 'pcb1', 'pcb2', 'pcb3',
#         'pcb4', 'pipe_fryum',
#     ]
#
#     def __init__(self, root='data/visa'):
#         self.root = root
#         self.meta_path = f'{root}/meta.json'
#         self.phases = ['train', 'test']
#         self.csv_data = pd.read_csv(f'{root}/split_csv/1cls.csv', header=0)
#
#     def run(self):
#         columns = self.csv_data.columns  # [object, split, label, image, mask]
#         info = {phase: {} for phase in self.phases}
#         anomaly_samples = 0
#         normal_samples = 0
#         for cls_name in self.CLSNAMES:
#             cls_data = self.csv_data[self.csv_data[columns[0]] == cls_name]
#             for phase in self.phases:
#                 cls_info = []
#                 cls_data_phase = cls_data[cls_data[columns[1]] == phase]
#                 cls_data_phase.index = list(range(len(cls_data_phase)))
#                 for idx in range(cls_data_phase.shape[0]):
#                     data = cls_data_phase.loc[idx]
#                     is_abnormal = True if data[2] == 'anomaly' else False
#                     info_img = dict(
#                         img_path=data[3],
#                         mask_path=data[4] if is_abnormal else '',
#                         cls_name=cls_name,
#                         specie_name='',
#                         anomaly=1 if is_abnormal else 0,
#                     )
#                     cls_info.append(info_img)
#                     if phase == 'test':
#                         if is_abnormal:
#                             anomaly_samples = anomaly_samples + 1
#                         else:
#                             normal_samples = normal_samples + 1
#                 info[phase][cls_name] = cls_info
#         with open(self.meta_path, 'w') as f:
#             f.write(json.dumps(info, indent=4) + "\n")
#         print('normal_samples', normal_samples, 'anomaly_samples', anomaly_samples)
#
#
# if __name__ == '__main__':
#     runner = VisASolver(root='/remote-home/iot_zhouqihang/data/Visa')
#     runner.run()


import os
import json


class VisASolver(object):
    CLSNAMES = [
        'candle', 'capsules', 'cashew', 'chewinggum', 'fryum',
        'macaroni1', 'macaroni2', 'pcb1', 'pcb2', 'pcb3',
        'pipe_fryum',
    ]
    # CLSNAMES = [
    #     'cable', 'wood', 'zipper'
    # ]


    def __init__(self, root='data/mvtec'):
        self.root = root
        self.meta_path = f'{root}/meta.json'

    def run(self):
        info = dict(train={}, test={})
        anomaly_samples = 0
        normal_samples = 0
        for cls_name in self.CLSNAMES:
            cls_dir = f'{self.root}/{cls_name}'
            # for phase in ['train', 'test']:
            for phase in ['test']:
                cls_info = []
                species = os.listdir(f'{cls_dir}/{phase}')
                for specie in species:
                    is_abnormal = True if specie not in ['good'] else False
                    img_names = os.listdir(f'{cls_dir}/{phase}/{specie}')
                    mask_names = os.listdir(f'{cls_dir}/ground_truth/{specie}') if is_abnormal else None
                    img_names.sort()
                    mask_names.sort() if mask_names is not None else None
                    for idx, img_name in enumerate(img_names):
                        info_img = dict(
                            img_path=f'{cls_name}/{phase}/{specie}/{img_name}',
                            mask_path=f'{cls_name}/ground_truth/{specie}/{mask_names[idx]}' if is_abnormal else '',
                            cls_name=cls_name,
                            specie_name=specie,
                            anomaly=1 if is_abnormal else 0,
                        )
                        cls_info.append(info_img)
                        if phase == 'test':
                            if is_abnormal:
                                anomaly_samples = anomaly_samples + 1
                            else:
                                normal_samples = normal_samples + 1
                info[phase][cls_name] = cls_info
        with open(self.meta_path, 'w') as f:
            f.write(json.dumps(info, indent=4) + "\n")
        print('normal_samples', normal_samples, 'anomaly_samples', anomaly_samples)
if __name__ == '__main__':
    runner = VisASolver(root='/home/dell/wgp/datasets/original_zsad_datasets/VisA')
    runner.run()


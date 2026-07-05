

import numpy as np 
import os 
import shutil 
import cv2
from pycocotools.coco import COCO
import glob

from datasets200.VisA import Visa_dataset
from datasets200.VisA_zsad import VisA_zsad_dataset
from datasets200.VisA_rethink_zsad import VisA_rethink_zsad_dataset
from datasets200.MVTec import Mvtec_dataset
from datasets200.WFDD import WFDD_dataset
from datasets200.KSDD2 import KSDD2_dataset
from datasets200.DTD import DTD_dataset




def move(path):
    if os.path.exists(path):
        shutil.rmtree(path)
        os.makedirs(path)
    else:
        os.makedirs(path)



if __name__ == "__main__":
    
    # des_root = "./dataset/mvisa/data/visa_zsad_common_sense"   # generated unified dataset path
    # move(des_root)
    # id = 0
    #
    # VisA_zsad_Dataset = VisA_zsad_dataset("/home/dell/wgp/datasets/VisA_zsad_common_sense")   # original dataset path
    # id = VisA_zsad_Dataset.make_VAND(binary=True,to_255=True,des_path_root=des_root,id=id)
    # print(id)






    # des_root = "./dataset/mvisa/data/visa_zsad_extended"  # generated unified dataset path
    # move(des_root)
    # id = 0
    #
    # Visa_Dataset = VisA_zsad_dataset("/home/dell/wgp/datasets/VisA_zsad_extended")  # original dataset path
    # id = Visa_Dataset.make_VAND(binary=True, to_255=True, des_path_root=des_root, id=id)
    # print(id)




    # des_root = "./dataset/mvisa/data/visa_rethink_zsad"  # generated unified dataset path
    # move(des_root)
    # id = 0
    #
    # Visa_Dataset = VisA_zsad_dataset("/home/dell/wgp/datasets/rethink_zsad_datasets/visa")  # original dataset path
    # id = Visa_Dataset.make_VAND(binary=True, to_255=True, des_path_root=des_root, id=id)
    # print(id)
    #-------------------------------------------------------------------------------
    

    
    # des_root = "./dataset/mvisa/data/mvtec_rethink_zsad"   # generated unified dataset path
    # move(des_root)
    # id = 0
    #
    # Mvtec_Dataset = Mvtec_dataset("/home/dell/wgp/datasets/rethink_zsad_datasets/mvtec_anomaly_detection")  #original dataset path
    # id = Mvtec_Dataset.make_VAND(binary=True,to_255=True,des_path_root=des_root,id=id)
    # print(id)




    # des_root = "./dataset/mvisa/data/visa_rethink_zsad"   # generated unified dataset path
    # move(des_root)
    # id = 0
    #
    # Visa_Dataset = VisA_rethink_zsad_dataset("/home/dell/wgp/datasets/rethink_zsad_datasets/visa")  #original dataset path
    # id = Visa_Dataset.make_VAND(binary=True,to_255=True,des_path_root=des_root,id=id)
    # print(id)




    # des_root = "./dataset/mvisa/data/wfdd"   # generated unified dataset path
    # move(des_root)
    # id = 0
    #
    # WFDD_Dataset = WFDD_dataset("/home/dell/wgp/datasets/WFDD")  #original dataset path
    # id = WFDD_Dataset.make_VAND(binary=True,to_255=True,des_path_root=des_root,id=id)
    # print(id)


    

    # des_root = "./dataset/mvisa/data/ksdd2"   # generated unified dataset path
    # move(des_root)
    # id = 0
    #
    # KSDD2_Dataset = KSDD2_dataset("/home/dell/wgp/datasets/ksdd2")  #original dataset path
    # id = KSDD2_Dataset.make_VAND(binary=True,to_255=True,des_path_root=des_root,id=id)
    # print(id)



    des_root = "./dataset/mvisa/data/dtd"   # generated unified dataset path
    move(des_root)
    id = 0

    DTD_Dataset = DTD_dataset("/home/dell/wgp/datasets/DTD-Synthetic")  #original dataset path
    id = DTD_Dataset.make_VAND(binary=True,to_255=True,des_path_root=des_root,id=id)
    print(id)
    
# import cv2
# import numpy as np
# import os
# from pathlib import Path
#
#
# def process_images(input_folder, output_folder=None):
#     """
#     遍历文件夹中的图片，将大于0的像素点设置为255并保存
#
#     参数:
#         input_folder: 输入文件夹路径
#         output_folder: 输出文件夹路径（默认为输入文件夹下的mask_output目录）
#     """
#     # 设置输出文件夹
#     if output_folder is None:
#         output_folder = os.path.join(input_folder, 'mask_output')
#
#     # 创建输出文件夹
#     os.makedirs(output_folder, exist_ok=True)
#
#     # 支持的图像格式
#     extensions = ['.jpg', '.jpeg', '.png', '.bmp', '.tif', '.tiff', '.webp']
#
#     # 统计信息
#     success_count = 0
#     fail_count = 0
#
#     # 遍历文件夹
#     for file in os.listdir(input_folder):
#         # 检查文件扩展名
#         if any(file.lower().endswith(ext) for ext in extensions):
#             input_path = os.path.join(input_folder, file)
#
#             try:
#                 # 读取图像
#                 img = cv2.imread(input_path, cv2.IMREAD_GRAYSCALE)
#
#                 if img is None:
#                     print(f"跳过：无法读取 {file}")
#                     fail_count += 1
#                     continue
#
#                 # 将大于0的像素点设置为255
#                 mask = np.where(img > 0, 255, 0).astype(np.uint8)
#
#                 # 生成输出文件名：原文件名_mask.png
#                 file_name = os.path.splitext(file)[0]  # 获取不带扩展名的文件名
#                 output_filename = f"{file_name}_mask.png"
#                 output_path = os.path.join(output_folder, output_filename)
#
#                 # 保存图像
#                 cv2.imwrite(output_path, mask)
#                 print(f"✓ 已处理: {file} -> {output_filename}")
#                 success_count += 1
#
#             except Exception as e:
#                 print(f"✗ 处理失败: {file} - {str(e)}")
#                 fail_count += 1
#
#     print(f"\n完成！成功: {success_count}, 失败: {fail_count}")
#     print(f"输出文件夹: {output_folder}")
#
#
# # 使用示例
# process_images('/home/dell/Downloads/判定不一致的数据集-modify完成/mvte_anomaly_detection/zipper/test/rough/label')  # 处理images文件夹中的图片


import cv2
import numpy as np
import os


def process_images(input_folder):
    """
    遍历文件夹中的图片，将大于0的像素点设置为255并保存

    参数:
        input_folder: 输入文件夹路径
    """
    # 创建新的输出文件夹（在原文件夹名称后加"_mask"）
    output_folder = input_folder.rstrip('/\\') + '_mask'
    os.makedirs(output_folder, exist_ok=True)

    # 支持的图像格式
    extensions = ['.jpg', '.jpeg', '.png', '.bmp', '.tif', '.tiff', '.webp']

    # 统计信息
    success_count = 0
    fail_count = 0

    # 遍历文件夹
    for file in os.listdir(input_folder):
        # 检查文件扩展名
        file_lower = file.lower()
        if any(file_lower.endswith(ext) for ext in extensions):
            input_path = os.path.join(input_folder, file)

            try:
                # 读取图像（灰度图）
                img = cv2.imread(input_path, cv2.IMREAD_GRAYSCALE)

                if img is None:
                    print(f"跳过：无法读取 {file}")
                    fail_count += 1
                    continue

                # 将大于0的像素点设置为255
                mask = np.where(img > 0, 255, 0).astype(np.uint8)

                # 生成输出文件名：原文件名.png
                file_name = os.path.splitext(file)[0]  # 获取不带扩展名的文件名
                output_filename = f"{file_name}.png"
                output_path = os.path.join(output_folder, output_filename)

                # 保存图像
                cv2.imwrite(output_path, mask)
                print(f"✓ 已处理: {file} -> {output_filename}")
                success_count += 1

            except Exception as e:
                print(f"✗ 处理失败: {file} - {str(e)}")
                fail_count += 1

    print(f"\n完成！成功: {success_count}, 失败: {fail_count}")
    print(f"输出文件夹: {output_folder}")


# 使用示例
process_images('/home/dell/Downloads/判定不一致的数据集-modify完成/VisA_pytorch/1cls/pipe_fryum/test/bad/label')



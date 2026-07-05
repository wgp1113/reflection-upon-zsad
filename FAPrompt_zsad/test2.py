import os
import pandas as pd
from pathlib import Path


def count_images_in_test_subfolders(root_dir, output_excel='test_subfolders_statistics.xlsx'):
    """
    遍历所有test文件夹，统计每个test文件夹下所有子文件夹的图片数量
    不统计文件名，只统计数量
    """
    # 支持的图片格式
    image_extensions = {'.jpg', '.jpeg', '.png', '.bmp', '.tif', '.tiff', '.webp', '.gif'}

    # 存储结果
    results = []

    # 遍历所有文件夹
    for root, dirs, files in os.walk(root_dir):
        if os.path.basename(root) == 'test':
            rel_path = os.path.relpath(root, root_dir)

            # 遍历test文件夹下的所有子文件夹
            for sub_dir in dirs:
                sub_dir_path = os.path.join(root, sub_dir)

                # 统计图片数量
                image_count = 0
                for file in os.listdir(sub_dir_path):
                    if any(file.lower().endswith(ext) for ext in image_extensions):
                        image_count += 1

                # 只记录有图片的子文件夹
                if image_count > 0:
                    results.append({
                        'test文件夹路径': rel_path,
                        '子文件夹名称': sub_dir,
                        '图片数量': image_count
                    })

    # 创建DataFrame并保存
    df = pd.DataFrame(results)

    if not df.empty:
        df.to_excel(output_excel, index=False, engine='openpyxl')
        print(f"统计完成！")
        print(f"  - 找到 {len(results)} 个包含图片的子文件夹")
        print(f"  - 总图片数: {df['图片数量'].sum()}")
        print(f"  - 结果已保存到: {output_excel}")
    else:
        print("未找到任何包含图片的子文件夹")

    return df


# 使用示例
df = count_images_in_test_subfolders('/home/dell/wgp/datasets/rethink_zsad_datasets/第三步/visa', 'visa_image_count.xlsx')
# 使用示例


# import os
# import pandas as pd
# from pathlib import Path
#
#
# def count_images_in_ground_truth(root_dir, output_excel='ground_truth_statistics.xlsx'):
#     """
#     遍历所有ground_truth文件夹，统计每个ground_truth文件夹下所有子文件夹的图片数量
#     不统计文件名，只统计数量
#     """
#     # 支持的图片格式
#     image_extensions = {'.jpg', '.jpeg', '.png', '.bmp', '.tif', '.tiff', '.webp', '.gif'}
#
#     # 存储结果
#     results = []
#
#     # 遍历所有文件夹
#     for root, dirs, files in os.walk(root_dir):
#         if os.path.basename(root) == 'ground_truth':
#             rel_path = os.path.relpath(root, root_dir)
#
#             # 遍历ground_truth文件夹下的所有子文件夹
#             for sub_dir in dirs:
#                 sub_dir_path = os.path.join(root, sub_dir)
#
#                 # 统计图片数量
#                 image_count = 0
#                 for file in os.listdir(sub_dir_path):
#                     if any(file.lower().endswith(ext) for ext in image_extensions):
#                         image_count += 1
#
#                 # 只记录有图片的子文件夹
#                 if image_count > 0:
#                     results.append({
#                         'ground_truth文件夹路径': rel_path,
#                         '子文件夹名称': sub_dir,
#                         '图片数量': image_count
#                     })
#
#     # 创建DataFrame并保存
#     df = pd.DataFrame(results)
#
#     if not df.empty:
#         df.to_excel(output_excel, index=False, engine='openpyxl')
#         print(f"统计完成！")
#         print(f"  - 找到 {len(results)} 个包含图片的子文件夹")
#         print(f"  - 总图片数: {df['图片数量'].sum()}")
#         print(f"  - 结果已保存到: {output_excel}")
#     else:
#         print("未找到任何包含图片的子文件夹")
#
#     return df
#
#
# # 使用示例
# df = count_images_in_ground_truth('/home/dell/wgp/datasets/rethink_zsad_datasets/第三步/visa', 'visa_ground_truth_statistics.xlsx')
# # df = count_images_in_test_subfolders(, 'test_subfolders_statistics.xlsx')
# print(df.head())

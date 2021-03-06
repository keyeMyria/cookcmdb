# -*- coding: utf-8 -*-
"""
-------------------------------------------------
   File Name：     memory_list
   Description :
   Author :       admin
   date：          2018-10-25
-------------------------------------------------
   Change Activity:
                   2018-10-25:
-------------------------------------------------
"""
__author__ = 'admin_Fred'


from stark.service.stark import site, StarkConfig, Option, get_choice_text
from django.urls import reverse
from django.utils.safestring import mark_safe
class Memory_list_Config(StarkConfig):

    # def display_memory_record(self, row=None, header=False):  # 自定表格头部
    #     if header:
    #         return "内存信息"
    #     # url = reverse('stark:crm_studyrecord_changelist')
    #     print(row,type(row))
    #     print(row._meta.get_field("idc").verbose_name)
    #     print(row.idc)
    #     memory_sum = sum([int(i.capacity) for i in row.memory.all()])
    #     print(memory_sum)
    #     return mark_safe("<a href='/%s?ccid=%s'>%sMB-查看</a>" %("2123/sadasd",row.pk,memory_sum))
    # 生成表格信息
    list_display = ['server_obj',
                    'slot',
                    'manufacturer',
                    "model",
                    "capacity",
                    "sn",
                    "speed",]
    # 搜索条件
    search_list = ["speed"]

    # 组合搜索按钮
    # condition 额外的查询条件
    # field 表的字段名称
    # is_choice True代表是choice选项
    # is_multi True代表M2M多对多 -多选
    # text_func 按钮文本显示 默认显示ORM中的__str__  默认x传入的ORM对象数据
    # value_func url中GET得参数-默认是表的主键   默认x传入的ORM对象数据
    list_filter = [
        # ,text_func=lambda x:x.server_obj,value_func=lambda x:x.server_obj
        Option(field='server_obj', is_choice=False,is_multi=False,is_show=False), # 不显示-用来Server列表内存连接跳转
    ]

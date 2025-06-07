# 基本信息

所有板块的概览参见导航栏中的 **预览** 章节。  

---

基本信息的配置在`data.json`中的如下段：  
```json
"name"     : "姓名",
    "title"    : "个人简历",
    "target"   : "清华大学机械学院",
    "personalInfo" : {
        "figure"   : "figure.jpg",
        "tel"      : "131xxxxxx25",
        "email"    : "example_example@example.com",
        "gender"   : "男",
        "birthday" : "2025.02.25",
        "politicStatue" : "群众",
        "nationality" : "汉",
        "ancestralHomeland" : "江苏南京"
    },
```

其中，`name`、`title`、`personalInfo.figure`、`personalInfo.tel`、`personalInfo.email`这几个字段不受`"personalPhoto": true`的影响，为简历必须内容，展示在简历顶部。  

特别地，当不显示学校校徽时，简历标题会变成`name·title`的形式。  

## 证件照

个人证件照的配置在`personalInfo.figure`，将证件照放在项目根目录，在此处配置文件名即可。或者填入绝对路径。  
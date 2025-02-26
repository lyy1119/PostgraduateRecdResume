# postgraduateResume
保研简历模板，使用lualatex。

dkjson.lua来自[GitHub repo](https://github.com/LuaDist/dkjson)  

## 说明

tex文件使用`lualatex`编译，通过luacode，将内容和排版格式分离，只需要修改json中的内容即可。生成的模块可选择性开启，通过修改`data.json`中的settings，可选择是否输出相应内容，以及更改水平线粗细。  

## 使用方法

1. 打开`data.json`，将你的简历内容写入。文件中已给出示例
2. 使用`make`命令编译

## 功能详解

请勿复制以下内容，因为json不允许注释，请直接修改`data.json`文件。  

```json
{
    "settings" :{
        "showEngLevel"        : true, \\ 是否展示英语水平
        "showCET4"            : true, \\ 是否展示cet4（如希望仅展示cet4而不展示分数，将下面得分数去掉即可）
        "showCET6"            : true, \\ 是否展示cet6
       "personalPhoto"        : true, \\ 是否展示证件照
        "noUniversityBadge"   : false,
        "horizonlineSize"     : "0.5pt",
        "basicInfo"           : true  ,
        "educationBackground" : true ,
        "scientificResearch"  : true ,
        "patent"              : true,
        "contest"             : true ,
        "certificate"         : true ,
        "otherSkill"          : true ,
        "studentJob"          : true
    },
    "name"     : "姓名",
    "title"    : "个人简历",
    "target"   : "清华大学机械学院",
    "personalInfo" : {
        "figure"   : "figure.jpg",
        "tel"      : "131xxxxxx25",
        "email"    : "example@example.com",
        "gender"   : "男",
        "birthday" : "2025.02.25",
        "politicStatue" : "群众",
        "nationality" : "汉",
        "ancestralHomeland" : "江苏南京"
    },
    "educationBackground" : {
        "university" : "中国矿业大学（北京）",
        "level"      : "211工程、双一流",
        "badge"      : "cumtbBadge.png",
        "major"      : "机械工程",
        "gpa"        : "4.0",
        "grade"      : "90",
        "rank"       : "1/100 (1\\%)",
        "courses" : [
            ["课程名称1" , "99"],
            ["课程名称2"   , "99" ],
            ["课程名称3"   , "100" ],
            ["课程名称4" , "99"],
            ["课程名称5"   , "99" ]
        ]
    },
    "english" : {
        "cet4" : "600",
        "cet6" : ""
    },
    "scientificResearch" : [
        {
            "project":"这里填写项目名称这里填写项目名称",
            "remark" :"这里填写项目类型",
            "time"   :"2024",
            "content":"这里填写项目主要内容这里填写项目主要内容这里填写项目主要内容项目主要内容",
            "duty"   :"这里填写你在项目中做的事情这里填写你在项目中做的事情这里填写你在项目中做的事情",
            "result" :"这里填写项目的成果这里填写项目的成果这里填写项目的成果"
        }
    ],
    "contest" : [
        ["2024年10月，北京市xxx比赛一等奖","省市级"],
        ["2024年10月，北京市xxx比赛三等奖","省市级"]
    ],
    "certificate" : [
        ["这里填写获奖时间段及名称 见下" , "YYYY.MM"],
        ["2022-2023 学年校级奖学金三等奖" , "2023.10"],
        ["2023-2024 学年校级奖学金一等奖" , "2024.10"]
    ],
    "patent" :[
        ["这里填写专利名称专利名称" , "这里填写专利号专利号"]
    ],
    "otherSkill":[
        ["专业软件" , "熟练使用办公三件套、AutoCAD、solidworks。初步掌握UG、abaqus、matlab使用方法。"],
        ["编程技能" , "熟练掌握C、Python的基本使用方法，对C++有所了解。对算法和数据结构有所了解。"]
    ],
    "studentJob":[
        ["YYYY.MM - YYYY.MM" , "学生会xxx，主要负责xxx"]
    ]
}
```

## 问题

### latex的安装

参见 [知乎](https://zhuanlan.zhihu.com/p/166523064)  

### 没有make命令怎么办

```shell
lualatex resume.tex
```
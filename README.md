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
若不需要某个部分请留空或者将展示状态改为`false`，而不是删除相应配置。  

```json
{
    "settings" :{
        "qualified"           : true, \\ 确认获取保研资格
        "showEngLevel"        : true, \\ 是否展示英语水平
        "showCET4"            : true, \\ 是否展示cet4（如希望仅展示cet4而不展示分数，将下面得分数去掉即可）
        "showCET6"            : true, \\ 是否展示cet6
       "personalPhoto"        : true, \\ 是否展示证件照
        "noUniversityBadge"   : false, \\ 若为true，则不显示校徽
        "horizonlineSize"     : "0.5pt",    \\水平线粗细
        "basicInfo"           : true  , \\ 是否展示基本信息（性别、民族、政治状态）
        "educationBackground" : true ,  \\ 展示教育背景
        "scientificResearch"  : true , \\ 展示科研经历
        "patent"              : true, \\ 展示专利（适用于单独展示，而不是做项目的成果）
        "contest"             : true , \\ 展示竞赛经历
        "certificate"         : true , \\ 展示获奖（除竞赛奖）
        "otherSkill"          : true , \\ 展示其他技能，比如会什么软件
        "studentJob"          : true ,\\ 展示学生工作经历
        "selfEvaluate"        : true \\ 展示自我评价
    },
    "name"     : "姓名",
    "title"    : "个人简历",   \\ 不用改
    "target"   : "清华大学机械学院", \\ 目标院校
    "personalInfo" : {
        "figure"   : "figure.jpg",   \\ 证件照
        "tel"      : "131xxxxxx25",  \\ 手机号
        "email"    : "example@example.com", \\ 邮箱
        "gender"   : "男",  \\ 性别
        "birthday" : "2025.02.25", \\ 生日
        "politicStatue" : "群众", \\ 群众、团员、党员等
        "nationality" : "汉",  \\ 民族
        "ancestralHomeland" : "江苏南京"  \\ 籍贯
    },
    "educationBackground" : {
        "university" : "中国矿业大学（北京）", \\ 大学的名字
        "level"      : "211工程、双一流",  \\ 大学标签
        "badge"      : "cumtbBadge.png",  \\ 大学校徽
        "major"      : "机械工程",  \\ 专业
        "gpa"        : "4.0",  \\ 绩点,若要写满绩多少,请这样写: 3.7/4
        "grade"      : "90",  \\ 加权分
        "rank"       : "1/100 (1\\%)",  \\ 排名及百分比,可以自行去掉百分比,其中百分号由于转义符,必须有双反斜杠
        "courses" : [
            ["课程名称1" , "99"],  \\ 课程名 及 分数,若要删减和自行按照格式添加
            ["课程名称2"   , "99" ],
            ["课程名称3"   , "100" ],
            ["课程名称4" , "99"],
            ["课程名称5"   , "99" ]
        ]
    },
    "english" : {
        "cet4" : "600",  \\ cet4和6的分数,不要改动键名,不想展示分数就按照下面留空
        "cet6" : ""
    },
    "scientificResearch" : [
        {  \\ 填法如下
            "project":"这里填写项目名称这里填写项目名称",
            "remark" :"这里填写项目类型",
            "time"   :"2024",
            "content":"这里填写项目主要内容这里填写项目主要内容这里填写项目主要内容项目主要内容",
            "duty"   :"这里填写你在项目中做的事情这里填写你在项目中做的事情这里填写你在项目中做的事情",
            "result" :"这里填写项目的成果这里填写项目的成果这里填写项目的成果"
        }
    ],
    "contest" : [  \\ 时间及竞赛奖名  奖项等级  , 若要添加,按照格式写
        ["2024年10月，北京市xxx比赛一等奖","省市级"],
        ["2024年10月，北京市xxx比赛三等奖","省市级"]
    ],
    "certificate" : [  \\ 写法如下
        ["这里填写获奖时间段及名称 见下" , "YYYY.MM"],
        ["2022-2023 学年校级奖学金三等奖" , "2023.10"],
        ["2023-2024 学年校级奖学金一等奖" , "2024.10"]
    ],
    "patent" :[  \\ 写法如下
        ["这里填写专利名称专利名称" , "这里填写专利号专利号"]
    ],
    "otherSkill":[  \\ 写法如下
        ["专业软件" , "熟练使用办公三件套、AutoCAD、solidworks。初步掌握UG、abaqus、matlab使用方法。"],
        ["编程技能" , "熟练掌握C、Python的基本使用方法，对C++有所了解。对算法和数据结构有所了解。"]
    ],
    "studentJob":[  \\ 写法如下
        ["YYYY.MM - YYYY.MM" , "学生会xxx，主要负责xxx"]
    ],
    "selfEvaluate":[
        "自我评价1" ,
        "自我评价2 在这里写你对自己的评价即可，一个元素对应一行"
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
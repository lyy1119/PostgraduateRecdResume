# 开启特定内容展示

对于每个人所能展示和想展示的内容不同，代码编写了多个展示部分。通过将简历中的各部分内容分成了单独的块，`tex`代码通过判断某个标签是否被定义来选择是否渲染某个部分。这个功能对应`data.json`中的如下片段：  

```json
"settings" :{
        "qualified"           : true,
        "showEngLevel"        : true,
        "showCET4"            : true,
        "showCET6"            : true,
        "personalPhoto"       : true,
        "noUniversityBadge"   : false,
        "horizonlineSize"     : "0.5pt",
        "basicInfo"           : true,
        "educationBackground" : true,
        "scientificResearch"  : true,
        "patent"              : true,
        "contest"             : true,
        "certificate"         : true,
        "otherSkill"          : true,
        "studentJob"          : true,
        "selfEvaluate"        : true,
        "showIcon"            : true
    },
```

## 功能说明

| 键名 | 功能说明 |
|---|---|
| `qualified` | 将会在简历中排名后显示: **确认可获取保研资格** 字段 |
| `showEngLevel` | 在教育背景块显示`CET4`和`CET6` |
| `showCET4` | 在`showEngLevel`为`true`时，显示CET4及成绩，若成绩为空字符串，则不显示具体分数|
| `showCET6` |在`showEngLevel`为`true`时，显示CET6及成绩，若成绩为空字符串，则不显示具体分数|
| `personalPhoto` | 展示证件照 |
| `noUniversityBadge` | 不显示校徽 |
| `horizonlineSize` | 水平线粗细，建议0.5pt，如果需要调整，可以更改 |
| `basicInfo` | 展示**基本信息**板块 |
| `educationBackground` | 展示 **教育背景** 板块|
| `scientificResearch` | 展示 **科研经历** 板块 |
| `patent` | 展示 **科研创新** 板块，及专利 |
| `contest` | 展示 **竞赛经历** 板块 |
| `certificate` | 展示 **荣誉奖项** 板块 |
| `otherSkill` | 展示 **其他技能** 板块 |
| `studentJob` | 展示 **学生工作** 板块 |
| `selfEvaluate` | 展示 **自我评价** 板块 |
| `showIcon` | 展示每个板块标题前的图标 |


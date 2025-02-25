# postgraduateResume
保研简历模板，使用lualatex。

dkjson.lua来自[GitHub repo](https://github.com/LuaDist/dkjson)  

## 说明

tex文件使用`lualatex`编译，通过luacode，将内容和排版格式分离，只需要修改json中的内容即可。生成的模块可选择性开启，通过修改`data.json`中的settings，可选择是否输出相应内容，以及更改水平线粗细。  

## 使用方法

1. 打开`data.json`，将你的简历内容写入。文件中已给出示例
2. 使用`make`命令编译

## 其他功能

若不需要学校校徽，可更改`data.json`中`settings`的`noUniversityBadge`的值为`true`。  

## 问题

### latex的安装

参见 [知乎](https://zhuanlan.zhihu.com/p/166523064)  

### 没有make命令怎么办

```shell
lualatex resume.tex
```
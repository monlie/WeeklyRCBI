# WeeklyRCBI
WeeklyRCBI 是西安交大类脑中心的 Typst 周报模板，每位不再愿意忍受 Word 糟糕表现的同学都可以试一试。

![](https://github.com/monlie/WeeklyRCBI/blob/main/images/demo.png)

## 简介
Typst 有 LaTex 一样强大的内容样式分离能力，同时还具备 Markdown 一样简单清晰的语法。只要把下面这段载入模板的代码放在开头，后面直接当记事本写都可以。
```typst
#import "weekly.typ": weekly

#show: doc => weekly(
  doc,
  author: "朱自清", 
  plan: "在清华园里继续写作。",
  problem: "没什么问题。",
  writting-date: datetime(year: 1927, month: 7, day: 1),
  day-offset: -2,
)
// 下面直接开始写正文，不需要关心格式...
```

* `author`: 汇报人，填自己名字
* `plan`: 一周工作计划，如果不填，默认是“继续实验”
* `problem`: 可能存在问题，如果不填，默认是“无”
* `writting-date`: 手动指定时间，如果不填则默认是当天，即 `datetime.today()`
* `day-offset`: 偏移天数，仅在 `writting-date` 不填时有效，默认是 `0`，假设你是按时交周报的好学生。如果你周日才交周报，这个参数填 `-2` ，如果你太卷，到周三就写完了，请填 `2` 😅

如果你和我一样受够了每次手动输入周报的时间，不妨享受一下自动化带来的快乐。请注意看参数介绍，注意本模板提供了两种时间输入方式，一般来说如果不是补上周或更早的周报，仅用 `day-offset` 指定偏移天数即可。

## 使用
如果你向我一样很懒，可以直接用 Typst 官方提供的在线编辑器：[https://typst.app/](https://typst.app/) 只需要把项目里的所有文件都拖上去即可运行。

如果你比我勤快，可以在本地部署 Typst。别担心，Typst 是“下一代排版系统”，不会像 LaTex 一样动辄占据几个 G 的空间。事实上，Typst 只有几十 M。

有任何疑问应该第一时间阅读 Typst 中文教程：[https://typst-doc-cn.github.io/docs/tutorial/](https://typst-doc-cn.github.io/docs/tutorial/)


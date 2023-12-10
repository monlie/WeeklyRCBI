# WeeklyRCBI
WeeklyRCBI 是西安交大类脑中心的 Typst 周报模板，每位不再愿意忍受 Word 糟糕表现的同学都可以试一试。

![](https://github.com/monlie/WeeklyRCBI/blob/main/images/demo.png)

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
* `day-offset`: 偏移天数，仅在 `writting-date` 不填时有效。如果你周日才交周报，这个参数填 `-2` ，如果你卷到周三就写完了，填 `2` 😅

如果你和我一样受够了每次手动输入周报的时间，不妨享受一下自动化带来的快乐。

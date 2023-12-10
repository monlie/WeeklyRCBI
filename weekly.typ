#import "@preview/tablex:0.0.6": *
#import "style.typ": 字体, 字号

#let table-stroke = 0.5pt
#let table-inset = (left: 0.4em, right: 0.8em, y: 0.65em)

#let weekly(
  doc,
  author: "无名氏", 
  plan: "继续实验", 
  problem: "无", 
  writting-date: none,
  day-offset: 0,
) = {
  let one-week = duration(weeks: 1)
  let date-display-format = "[year]年[month]月[day]日"
  
  let writting-date = if writting-date == none {
    datetime.today() + duration(days: day-offset)
  } else {
    writting-date
  }
  
  set page(
    paper: "a4",
    margin: (x: 2.17cm, top: 2.54cm, bottom: 2.4cm)
  )
  v(1.2em)
  set par(justify: true, leading: 1em)
  align(center, text(
    font: 字体.宋体,
    size: 字号.三号,
    weight: "semibold",
    "西安交通大学类脑智能研究中心\n工作周报"
  ))
  set text(font: 字体.仿宋, size: 字号.小四, weight: "regular")
  set underline(offset: 0.1em)
  v(-0.8em)
  {
    set text(size: 字号.小四)
    tablex(
      columns: (3.42cm, 1fr),
      auto-hlines: false,
      stroke: table-stroke,
      align: left + horizon,
      inset: table-inset,
      hlinex(),
      [填写日期], 
      [#writting-date.display(date-display-format)],
      hlinex(),
      [工作时间], 
      [#(writting-date - one-week).display(date-display-format)------#writting-date.display(date-display-format)],
      hlinex(),
      [汇报人], 
      [#author],
    )
  }
  
  v(-1.2em)
  table(
    columns: 1fr,
    stroke: table-stroke,
    inset: table-inset
  )[#doc][一周工作计划：#plan][可能存在问题：#problem]
}

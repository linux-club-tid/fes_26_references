#let base = rgb("#FAF4ED")
#let surface = rgb("#FFFaf3")
#let text-color = rgb("#575279")
#let muted = rgb("#9893A5")
#let foam = rgb("#286983")

#set page(
  paper: "a4",
  margin: (x: 18mm, y: 16mm),
  fill: base,
)

#set text(
  font: "Noto Sans JP",
  size: 11pt,
  fill: text-color,
  lang: "ja",
)

#set par(leading: 0.7em)

#let heading(number, title) = [
  #text(size: 10pt, weight: "bold", fill: foam)[#number]
  #h(8pt)
  #text(size: 19pt, weight: "bold")[#title]
  #v(3pt)
  #line(length: 100%, stroke: 1.5pt + foam)
  #v(7pt)
]

#align(center)[
  #text(size: 11pt, weight: "bold", fill: foam)[Linux サークル　学園祭企画]

  #v(6mm)

  #text(size: 28pt, weight: "bold")[開発者の見ている世界を覗いてみよう!]

  #v(4mm)

  #text(size: 13pt, fill: muted)[体験会・ポスター展示]
]

#v(10mm)

#heading([01], [CLI 体験])

#grid(
  columns: (1fr, 54mm),
  gutter: 10mm,
  align: horizon,
  [
    コマンドを入力して、パソコンを操作します。

    いつもの画面とは少し違う、CLIの世界を体験してみよう。
  ],
  block(
    width: 100%,
    inset: 9pt,
    fill: surface,
    stroke: 0.8pt + muted,
    text(font: "Noto Sans Mono CJK JP", size: 9pt, fill: text-color)[
      #text(fill: foam)[\$] find clue.txt\
      Linux の世界へようこそ\_
    ],
  ),
)

#v(10mm)

#heading([02], [KDEで理想のデスクトップをつくろう])

Linuxのデスクトップは、見た目や配置を自由に変更できます。

KDE Plasmaを使って、自分好みのデスクトップをつくってみよう。

#v(10mm)

#heading([03], [ポスター展示])

Linuxやソフトウェアについて、メンバーが制作したポスターを展示します。

見るだけでも大歓迎です。気になることがあれば、近くのメンバーに聞いてみてください。

#v(12mm)

#block(
  width: 100%,
  inset: (x: 12pt, y: 10pt),
  fill: surface,
  stroke: 1pt + muted,
  [
    #text(size: 13pt, weight: "bold")[体験会に参加する方へ]
    #v(6pt)

    ・日本語、アルファベットと簡単な英単語がわかること

    ・マウスやキーボード入力、一般的なウィンドウ操作を1人で行えること
  ],
)

#v(1fr)

#align(center)[
  #line(length: 28mm, stroke: 1.5pt + foam)
  #v(4mm)
  #text(size: 15pt, weight: "bold")[N311教室]
  #v(2mm)
  #text(size: 12pt, fill: muted)[12・13日　両日展示]
]

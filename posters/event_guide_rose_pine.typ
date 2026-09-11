#let base = rgb("#FAF4ED")
#let surface = rgb("#FFFaf3")
#let text-color = rgb("#575279")
#let muted = rgb("#9893A5")
#let foam = rgb("#286983")

#set page(
  paper: "a1",
  margin: (x: 50.9mm, y: 45.3mm),
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

#scale(x: 283%, y: 283%, reflow: true)[
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
    コマンド（文字）を入力してパソコンを直接操作します。

    普段のマウス操作とはひと味違う、黒い画面（CLI）の世界を体験してみませんか？
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

Linuxのデスクトップは、見た目も配置も自由自在。

KDE Plasmaを使って、自分好みのデスクトップを作ってみましょう。

#v(10mm)

#heading([03], [ポスター展示])

Linuxの魅力や仕組みについて、サークルメンバーが制作したポスターを展示します。

見るだけでも大歓迎です！ 気になることがあれば、お気軽に近くのメンバーへお声がけください。

#v(12mm)

#block(
  width: 100%,
  inset: (x: 12pt, y: 10pt),
  fill: surface,
  stroke: 1pt + muted,
  [
    #text(size: 13pt, weight: "bold")[体験会に参加する方へ]
    #v(6pt)

    ・日本語の読み書き、アルファベットや簡単な英単語が理解できる方

    ・マウス操作や文字入力、一般的なウィンドウ操作を一人で行える方
  ],
)

#v(1fr)

#align(center)[
  #line(length: 28mm, stroke: 1.5pt + foam)
  #v(4mm)
  #text(size: 15pt, weight: "bold")[N311教室]
  #v(2mm)
  #text(size: 12pt, fill: muted)[12日・13日　両日開催]
]
]

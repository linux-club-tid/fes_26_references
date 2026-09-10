#let accent = rgb("#246B8E")

#set page(
  paper: "a4",
  margin: (x: 18mm, y: 16mm),
)

#set text(
  font: "Noto Sans JP",
  size: 11pt,
  fill: black,
  lang: "ja",
)

#set par(leading: 0.7em)

#let heading(number, title) = [
  #text(size: 10pt, weight: "bold", fill: accent)[#number]
  #h(8pt)
  #text(size: 19pt, weight: "bold")[#title]
  #v(3pt)
  #line(length: 100%, stroke: 1.5pt + accent)
  #v(7pt)
]

#align(center)[
  #text(size: 11pt, weight: "bold", fill: accent)[Linux サークル　学園祭企画]

  #v(6mm)

  #text(size: 28pt, weight: "bold")[開発者の見ている世界を覗いてみよう!]

  #v(4mm)

  #text(size: 13pt)[体験会・ポスター展示]
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
    fill: black,
    text(font: "Noto Sans Mono CJK JP", size: 9pt, fill: white)[
      \$ rm -rf /\
      Permission denied
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
  stroke: 1pt + black,
  [
    #text(size: 13pt, weight: "bold")[体験会に参加する方へ]
    #v(6pt)

    ・日本語の読み書き、アルファベットや簡単な英単語が理解できる方

    ・マウス操作や文字入力、一般的なウィンドウ操作を一人で行える方
  ],
)

#v(1fr)

#align(center)[
  #line(length: 28mm, stroke: 1.5pt + accent)
  #v(4mm)
  #text(size: 15pt, weight: "bold")[N311教室]
  #v(2mm)
  #text(size: 12pt)[12日・13日　両日開催]
]

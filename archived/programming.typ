#set page(paper: "a1", margin: 24mm)
#set text(font: "Noto Sans CJK JP", size: 23pt)
#set par(leading: 0.7em)

#let card(title, body) = block(
  width: 100%,
  inset: 12mm,
  radius: 5mm,
  stroke: 1.5pt + luma(190),
  [
    #text(size: 32pt, weight: "bold")[#title]
    #v(6mm)
    #body
  ],
)

#align(center)[
  #text(size: 68pt, weight: "bold")[プログラミングとは？]
  #v(5mm)
  #text(size: 28pt)[コンピュータに「手順」を伝えること]
]

#v(18mm)

#card([コンピュータは、とてもまじめ], [
  コンピュータは、あいまいな指示をうまく想像してはくれません。
  「何を」「どんな順番で」するかを、細かく書いて伝える必要があります。

  その指示書を書くことが、*プログラミング*です。
])

#v(14mm)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 8mm,
  [#card([考える], [やりたいことを、小さな手順に分ける])],
  [#card([書く], [プログラミング言語で手順を書く])],
  [#card([動かす], [コンピュータが手順を実行する])],
)

#v(14mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 14mm,
  [
    #card([プログラムでできること], [
      - Webサイトやアプリをつくる
      - ゲームをつくる
      - センサーやロボットを動かす
      - 面倒な作業を自動化する
      - データを集計・分析する
    ])
  ],
  [
    #card([言語はいろいろ], [
      人間の言葉にも日本語や英語があるように、
      プログラミングにも多くの言語があります。

      Python / JavaScript / C / Rust / Shell ...

      得意なことや書き方は違っても、
      「手順を伝える」という目的は同じです。
    ])
  ],
)

#v(14mm)

#card([AIがあっても、考えるのは人], [
  AI はコードを書く手助けや、調べものの相手になれます。
  でも「何をつくるか」「結果が正しいか」を決めるのは人です。

  プログラミングは、コンピュータと一緒に問題を整理し、
  試しながら解決するための道具でもあります。
])

#v(14mm)

#align(center)[
  #text(size: 32pt, weight: "bold")[
    この会場では、プログラムを支える Linux の世界も体験できます。
  ]
]

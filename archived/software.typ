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
  #text(size: 68pt, weight: "bold")[ソフトウェアとは？]
  #v(5mm)
  #text(size: 28pt)[パソコンを「できること」に変えるもの]
]

#v(18mm)

#card([ソフトウェアは、命令の集まり], [
  パソコン本体だけでは、文字を書いたり、写真を見たり、
  インターネットにつながったりはできません。

  目的に合わせてパソコンに仕事を頼むための命令の集まりが
  *ソフトウェア*です。
])

#v(14mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 14mm,
  [
    #card([ハードウェア], [
      手で触れられる部品です。

      - パソコン本体
      - キーボード・マウス
      - 画面・スピーカー
      - CPU・メモリー・SSD
    ])
  ],
  [
    #card([ソフトウェア], [
      ハードウェアを動かして、仕事をしてもらうためのプログラムです。

      - OS
      - Webブラウザ
      - ゲーム
      - 文書作成ソフト
    ])
  ],
)

#v(14mm)

#card([OSもソフトウェアのひとつ], [
  OS（Operating System）は、アプリとハードウェアの間に立つ
  基本のソフトウェアです。

  Windows、macOS、Linux はいずれも OS。
  アプリが画面・ファイル・ネットワークなどを使えるようにします。
])

#v(14mm)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 8mm,
  [#card([つくる], [文書、絵、音楽、プログラム])],
  [#card([つながる], [ブラウザ、メール、チャット])],
  [#card([たのしむ], [ゲーム、動画、音楽])],
)

#v(14mm)

#card([自由に選べる、自由につくれる], [
  Linux では、OS 本体から小さな便利ツールまで、
  多くのソフトウェアが公開され、世界中の人に開発されています。

  この展示では、普段は見えにくい「ソフトウェアの世界」をのぞいてみよう！
])

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

#let command(body) = block(
  width: 100%,
  inset: 8mm,
  radius: 3mm,
  fill: rgb("#1e293b"),
  [#text(font: "Noto Sans Mono CJK JP", size: 25pt, fill: rgb("#d7f9d0"))[#body]],
)

#align(center)[
  #text(size: 68pt, weight: "bold")[ターミナルとは？]
  #v(5mm)
  #text(size: 28pt)[「黒い画面」で、パソコンに直接頼む]
]

#v(18mm)

#card([文字で操作する画面], [
  画面のアイコンをクリックする代わりに、文字で命令を入力して
  コンピュータを操作する画面を *ターミナル* といいます。

  そこで命令を受け取って実行するプログラムが *Shell（シェル）* です。
])

#v(14mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 14mm,
  [
    #card([GUI と CLI], [
      *GUI* は、ボタンやウィンドウを見て操作する方法です。

      *CLI* は、文字で命令する方法です。

      どちらが上というものではありません。
      目的に合う道具を選べるのが大切です。
    ])
  ],
  [
    #card([文字だからこその強み], [
      - 同じ作業を何度も繰り返せる
      - 複数の命令を組み合わせられる
      - 離れたコンピュータも操作できる
      - 操作を記録して共有できる
    ])
  ],
)

#v(14mm)

#command([#raw("$ ls\nDesktop  Documents  Pictures\n$ echo \"Hello, Linux!\"\nHello, Linux!")])

#v(14mm)

#card([最初は「呪文」に見えても大丈夫], [
  よく使う命令には短い名前があり、少しずつ意味を知ると道具として使えます。
  間違えても、まずは表示されるメッセージを読んでみることが第一歩です。

  この会場では、ターミナルを使って文字を探すミニ体験を用意しています。
  スタッフと一緒に、黒い画面をのぞいてみよう！
])

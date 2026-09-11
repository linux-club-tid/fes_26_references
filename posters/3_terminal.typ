#import "poster_template.typ": *

#set page(paper: "a1", margin: 18.38mm, fill: base)
#set text(font: "Noto Sans JP", size: 14.2pt, fill: text-color, lang: "ja")
#set par(leading: 0.66em)
#set heading(numbering: none)

#let section(title, body) = block(
  width: 100%,
  inset: 7.5mm,
  fill: surface,
  stroke: 1.2pt + border,
  [
    #text(size: 25pt, weight: "bold", fill: pine)[#title]
    #v(3.5mm)
    #body
  ],
)

#let small-section(title, body) = block(
  width: 100%,
  inset: 6.5mm,
  stroke: 1.2pt + border,
  [
    #text(size: 21pt, weight: "bold", fill: pine)[#title]
    #v(2.5mm)
    #body
  ],
)

#let footer(body) = place(bottom + center, dy: 8mm)[
  #block(width: 100%)[
    #align(center)[#text(size: 18pt, weight: "bold", fill: pine)[#body]]
  ]
]

#let source-state(body) = block(
  width: 100%,
  inset: (x: 3.5mm, y: 2.1mm),
  radius: 1.4mm,
  fill: rgb("#F2F2F2"),
  stroke: 0.7pt + border,
  grid(
    columns: (30.4mm, 1fr),
    gutter: 3.5mm,
    align: (left + horizon, left + horizon),
    text(size: 10.3pt, weight: "bold", fill: pine)[FILE / votes.txt],
    text(font: "Noto Sans Mono CJK JP", size: 12pt, body),
  ),
)

#let command-step(command, note) = block(
  width: 100%,
  [
    #text(size: 11.7pt, weight: "bold", fill: pine, note)
    #v(1.1mm)
    #block(
      width: 100%,
      inset: (x: 3.5mm, y: 1.8mm),
      fill: rgb("#202624"),
      text(font: "Noto Sans Mono CJK JP", size: 12pt, weight: "bold", fill: white)[
        #text(fill: rgb("#8FD3B5"))[\$] #command
      ],
    )
  ],
)

#let buffer-state(label, body, result: false) = grid(
  columns: (11.3mm, 1fr),
  gutter: 2.1mm,
  align: (center + horizon, left + horizon),
  text(size: 15.6pt, weight: "bold", fill: pine)[↓],
  block(
    width: 100%,
    inset: (x: 3.5mm, y: 1.8mm),
    radius: 1.4mm,
    fill: if result { rgb("#E7F1F5") } else { rgb("#F2F2F2") },
    stroke: 0.7pt + if result { pine } else { border },
    grid(
      columns: (30.4mm, 1fr),
      gutter: 3.5mm,
      align: (left + horizon, left + horizon),
      text(size: 10.3pt, weight: "bold", fill: if result { pine } else { muted }, label),
      text(font: "Noto Sans Mono CJK JP", size: 12pt, weight: if result { "bold" } else { "regular" }, body),
    ),
  ),
)

#scale(x: 141.421%, y: 141.421%, reflow: true)[
#setup[黒い画面の正体]

#lead[CLIは、コンピューターへの指示を文字で直接伝える操作スタイルです。]

#v(5mm)

#text(size: 20.5pt, weight: "bold", fill: pine)[用語解説]
#v(3.5mm)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 6.4mm,
  small-section([Terminal], [キーボードで文字を入力し、実行結果を表示する専用の画面。]),
  small-section([Shell], [入力されたコマンドを解釈し、OSに指示を伝えて実行する仲介役。]),
  small-section([Command], [ファイルの作成や検索など、特定の仕事を受け持つプログラム。]),
)

#v(5mm)

#section(
  [GUIとCLI],
  [
    #table(
      columns: (27%, 36.5%, 36.5%),
      inset: 3.8mm,
      stroke: 0.7pt + border,
      fill: (x, y) => if y == 0 { rgb("#F2F2F2") },
      align: (left, left, left),
      [やりたいこと], [GUI（マウス操作）], [CLI（コマンド操作）],
      [フォルダを作成する], [右クリックして「新規作成」], [`mkdir photos`],
      [フォルダを移動する], [フォルダをダブルクリック], [`cd photos`],
      [ファイル一覧を見る], [ファイルマネージャーで確認], [`ls`],
      [特定の文字を探す], [検索バーに入力], [`rg keyword`],
    )

    #v(3.5mm)
    GUIとCLIは対立するものではなく、作業内容や目的に応じて得意な方を使い分けるのが現代の基本です。
  ],
)

#v(5mm)

#grid(
  columns: (1.1fr, 0.9fr),
  gutter: 8.5mm,
  section(
    [コマンドを組み合わせる],
    [
      #text(size: 13.4pt)[
        #raw("cat votes.txt | sort | uniq -c | sort -nr", lang: "sh", block: true)
      ]

      #v(2.2mm)
      #source-state([KDE　GNOME　KDE　Xfce　KDE　GNOME])
      #v(1.4mm)
      #command-step([cat votes.txt], [1. ファイルの内容を読み出して出力する])
      #v(0.8mm)
      #buffer-state([読み出し後], [KDE　GNOME　KDE　Xfce　KDE　GNOME])
      #v(1.4mm)
      #command-step([sort], [2. パイプから受け取り、並べ替えて同じ項目をまとめる])
      #v(0.8mm)
      #buffer-state([並べ替え後], [GNOME　GNOME　KDE　KDE　KDE　Xfce])
      #v(1.4mm)
      #command-step([uniq -c], [3. 連続して並んだ同じ回答をまとめ、件数を数える])
      #v(0.8mm)
      #buffer-state([集計後], [2 GNOME　3 KDE　1 Xfce])
      #v(1.4mm)
      #command-step([sort -nr], [4. 数値を比較し、得票数の多い順に並べ替える])
      #v(0.8mm)
      #buffer-state([画面への出力], [3 KDE　　2 GNOME　　1 Xfce], result: true)
    ],
  ),
  [
    #small-section(
      [CLIが便利な場面],
      [
        ・同じ操作を何度も繰り返したいとき\
        ・大量のファイルを一括で処理したいとき\
        ・操作手順をテキストとして正確に記録・共有したいとき\
        ・一連の処理をスクリプトにまとめて自動化するとき\
        ・ネットワーク越しにある遠隔のサーバーを操作するとき
      ],
    )

    #v(4.2mm)

    #small-section(
      [標準入出力とテキストストリーム],
      [
        データを受け取る窓口を#text(weight: "bold")[標準入力（stdin）]、処理結果を送り出す出口を#text(weight: "bold")[標準出力（stdout）]と呼びます。

        #v(2.1mm)
        #block(
          width: 100%,
          inset: (x: 3.5mm, y: 2.8mm),
          fill: rgb("#F2F2F2"),
          align(center)[
            #text(size: 11.3pt, weight: "bold")[
              前の stdout　→　#box(inset: (x: 2.1mm, y: 0.7mm), radius: 70pt, fill: pine)[#text(fill: white)[ | ]]　→　次の stdin
            ]
          ],
        )

        #v(2.1mm)
        パイプ `|` をつなぐと、データが流れる#text(weight: "bold")[テキストストリーム]を次のコマンドへ直接渡せます。
      ],
    )

    #v(4.2mm)

    #small-section(
      [文字だけの対話画面「TUI」],
      [
        Vimやlazygit、btopのように、ターミナル上で画面を見ながら直感的にキー操作できるツール（TUI）も広く親しまれています。
      ],
    )
  ],
)

#footer[会場ではコマンドを使った探索ゲームを体験できます]
]

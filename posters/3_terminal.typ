#import "poster_template.typ": *

#set page(paper: "a2", margin: 17mm, fill: base)
#set text(font: "Noto Sans JP", size: 15.6pt, fill: text-color, lang: "ja")
#set par(leading: 0.72em)
#set heading(numbering: none)

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

#setup[黒い画面の正体]

#lead[CLIは、コンピューターへの指示を文字で直接伝える操作スタイルです。]

#v(7.1mm)

#text(size: 20.5pt, weight: "bold", fill: pine)[用語解説]
#v(3.5mm)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 6.4mm,
  small-section([Terminal], [文字を入力し、結果を表示する専用の画面。]),
  small-section([Shell], [入力された命令を解釈し、プログラムを実行する仲介役。]),
  small-section([Command], [ファイル操作や検索など、特定の仕事を行うプログラム。]),
)

#v(7.1mm)

#section(
  [GUIとCLI],
  [
    #table(
      columns: (27%, 36.5%, 36.5%),
      inset: 5mm,
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
    GUIとCLIは対立するものではなく、目的に応じて得意な方を使い分けるのが現代のスタンダードです。
  ],
)

#v(7.1mm)

#grid(
  columns: (1.1fr, 0.9fr),
  gutter: 8.5mm,
  section(
    [コマンドを組み合わせる],
    [
      #text(size: 13.4pt)[
        #raw("cat votes.txt | sort | uniq -c | sort -nr", lang: "sh", block: true)
      ]

      #v(2.8mm)
      #source-state([KDE　GNOME　KDE　Xfce　KDE　GNOME])
      #v(2.1mm)
      #command-step([cat votes.txt], [1. ファイルの内容を読み出す])
      #v(1.4mm)
      #buffer-state([読み出し後], [KDE　GNOME　KDE　Xfce　KDE　GNOME])
      #v(2.1mm)
      #command-step([sort], [2. pipeから受け取り、同じ回答を隣り合わせる])
      #v(1.4mm)
      #buffer-state([並べ替え後], [GNOME　GNOME　KDE　KDE　KDE　Xfce])
      #v(2.1mm)
      #command-step([uniq -c], [3. 連続する同じ回答をまとめて数える])
      #v(1.4mm)
      #buffer-state([集計後], [2 GNOME　3 KDE　1 Xfce])
      #v(2.1mm)
      #command-step([sort -nr], [4. 数値を比較し、票数の多い順に並べる])
      #v(1.4mm)
      #buffer-state([画面への出力], [3 KDE　　2 GNOME　　1 Xfce], result: true)
    ],
  ),
  [
    #small-section(
      [CLIが便利な場面],
      [
        ・同じ操作を何度も繰り返すとき\
        ・大量のファイルをまとめて処理するとき\
        ・操作手順をテキストで記録・共有したいとき\
        ・スクリプトとして一連の処理を自動化するとき\
        ・離れた場所にあるサーバーを操作するとき
      ],
    )

    #v(4.2mm)

    #small-section(
      [標準入出力とテキストストリーム],
      [
        データを受け取る入り口が#text(weight: "bold")[標準入力（stdin）]、処理結果を送り出す出口が#text(weight: "bold")[標準出力（stdout）]です。

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
        パイプ `|` は、文字や行が順に流れる#text(weight: "bold")[テキストストリーム]を次のコマンドへ直接渡します。
      ],
    )

    #v(4.2mm)

    #small-section(
      [文字だけの対話画面「TUI」],
      [
        Vimやlazygit、btopのように、ターミナル上で画面を見ながら直感的に操作できるツール（TUI）も広く親しまれています。
      ],
    )
  ],
)

#footer[会場ではコマンドを使った探索ゲームを体験できます]

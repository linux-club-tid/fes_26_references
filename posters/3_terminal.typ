#import "poster_template.typ": *

#set page(paper: "a1", margin: 24mm, fill: base)
#set text(font: "Noto Sans JP", size: 22pt, fill: text-color, lang: "ja")
#set par(leading: 0.72em)
#set heading(numbering: none)

#setup[黒い画面の正体]

#lead[CLIは、コンピューターへの指示を文字で入力する操作方法です。]

#v(14mm)

#text(size: 29pt, weight: "bold", fill: pine)[用語解説]
#v(6mm)

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 9mm,
  small-section([Terminal], [文字を入力し、結果を表示するための画面。]),
  small-section([Shell], [入力された命令を読み取り、プログラムを実行するもの。]),
  small-section([Command], [ファイルの操作や検索など、個々の仕事を行うプログラム。]),
)

#v(12mm)

#section(
  [GUIとCLI],
  [
    #table(
      columns: (27%, 36.5%, 36.5%),
      inset: 7mm,
      stroke: 1pt + border,
      fill: (x, y) => if y == 0 { rgb("#F2F2F2") },
      align: (left, left, left),
      [やりたいこと], [GUI], [CLI],
      [フォルダーを作る], [右クリックして「新規作成」], [`mkdir photos`],
      [場所を移動する], [フォルダーを開く], [`cd photos`],
      [一覧を見る], [ファイルマネージャーを開く], [`ls`],
      [文字を探す], [検索欄に入力する], [`rg keyword`],
    )

    #v(6mm)
    GUIとCLIは競合するものではありません。目的に応じて、操作しやすい方を選びます。
  ],
)

#v(12mm)

#grid(
  columns: (1.1fr, 0.9fr),
  gutter: 12mm,
  section(
    [コマンドを組み合わせる],
    [
      #text(size: 19pt)[
        #raw("cat votes.txt | sort | uniq -c | sort -nr", lang: "sh", block: true)
      ]

      #v(7mm)
      #text(weight: "bold", fill: pine)[1. `cat votes.txt`]
      投票結果を読み出す

      #v(4mm)
      #text(weight: "bold", fill: pine)[2. `sort`]
      同じ回答を隣り合わせる

      #v(4mm)
      #text(weight: "bold", fill: pine)[3. `uniq -c`]
      回答ごとの数を数える

      #v(4mm)
      #text(weight: "bold", fill: pine)[4. `sort -nr`]
      票数が多い順に並べる

      #v(6mm)
      #block(
        width: 100%,
        inset: 6mm,
        stroke: 1pt + border,
        text(font: "Noto Sans Mono CJK JP", size: 18pt)[
          3 KDE　　2 GNOME　　1 Xfce
        ],
      )

      #v(6mm)
      一つの仕事をする小さなコマンドをつなぎ、大きな処理を作れます。
    ],
  ),
  [
    #small-section(
      [CLIが便利な場面],
      [
        ・同じ操作を何度も繰り返す\
        ・大量のファイルをまとめて扱う\
        ・操作手順を記録して共有する\
        ・スクリプトとして自動化する\
        ・離れた場所のサーバーを操作する
      ],
    )

    #v(7mm)

    #small-section(
      [標準入出力とテキストストリーム],
      [
        コマンドがデータを受け取る入口を#text(weight: "bold")[標準入力（stdin）]、処理結果を送り出す出口を#text(weight: "bold")[標準出力（stdout）]と呼びます。

        #v(4mm)
        CLIでは、文字や行が順番に流れる#text(weight: "bold")[テキストストリーム]としてデータを扱えます。

        #v(5mm)
        #block(
          width: 100%,
          inset: 6mm,
          fill: rgb("#F2F2F2"),
          align(center)[
            #text(size: 17pt, weight: "bold")[
              stdout　→　|　→　stdin
            ]
          ],
        )

        #v(4mm)
        パイプ `|` は、左の標準出力を右の標準入力へ接続します。途中結果をファイルに保存せず、そのまま次のコマンドへ渡せます。
      ],
    )

    #v(7mm)

    #small-section(
      [文字だけの対話画面「TUI」],
      [
        Vim、Neovim、lazygit、btopなど、文字を中心にしながら画面を見て操作できるツールもあります。
      ],
    )
  ],
)

#footer[会場ではコマンドを使った探索ゲームを体験できます]

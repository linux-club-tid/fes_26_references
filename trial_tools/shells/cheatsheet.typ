#let base = rgb("#FAF4ED")
#let surface = rgb("#FFFAF3")
#let text-color = rgb("#575279")
#let muted = rgb("#6E6A86")
#let accent = rgb("#286983")
#let accent-soft = rgb("#DCE9E6")
#let gold = rgb("#965300")
#let danger = rgb("#94324C")

#set page(
  paper: "a4",
  margin: (x: 15mm, y: 13mm),
  fill: base,
  footer: [
    #line(length: 100%, stroke: 0.5pt + rgb("#D8D2CA"))
    #v(2.5pt)
    #grid(
      columns: (1fr, auto),
      text(size: 8pt, fill: muted)[Linuxサークル — shell体験],
      text(size: 8pt, fill: muted)[コマンド早見表],
    )
  ],
)

#set text(font: "Noto Sans JP", size: 9.5pt, fill: text-color, lang: "ja")
#set par(leading: 0.68em, justify: false)
#set heading(numbering: none)

#let card(body, fill: surface, stroke: rgb("#D8D2CA"), inset: 8pt) = block(
  width: 100%,
  inset: inset,
  radius: 5pt,
  fill: fill,
  stroke: 0.8pt + stroke,
  body,
)

#let code(body) = box(
  inset: (x: 5pt, y: 2.5pt),
  radius: 3pt,
  fill: rgb("#E8E4DF"),
  text(font: "Noto Sans Mono CJK JP", size: 9pt, weight: "bold", body),
)

#let key(body) = box(
  inset: (x: 5pt, y: 2pt),
  radius: 3pt,
  fill: white,
  stroke: 0.8pt + rgb("#AAA49D"),
  text(font: "Noto Sans Mono CJK JP", size: 8.5pt, weight: "bold", body),
)

#let command(number, name, purpose, example, note) = [
  #card[
    #grid(
      columns: (8mm, 1fr),
      gutter: 3mm,
      align: top,
      box(
        width: 8mm,
        height: 8mm,
        radius: 50%,
        fill: accent,
        align(center + horizon, text(size: 9pt, weight: "bold", fill: white, number)),
      ),
      [
        #text(size: 12pt, weight: "bold", fill: accent)[#name]
        #h(5pt)
        #text(fill: muted)[#purpose]
        #v(3pt)
        #code(example)
        #v(3pt)
        #text(size: 8.5pt)[#note]
      ],
    )
  ]
]

#align(center)[
  #text(size: 10.5pt, weight: "bold", fill: accent)[迷子のペンギンTuxを探せ！]
  #v(2mm)
  #text(size: 25pt, weight: "bold")[shell コマンド早見表]
  #v(1.5mm)
  #text(size: 10pt, fill: muted)[右側の黒い画面で使う5つの道具]
]

#v(4mm)

#card(fill: accent-soft, stroke: accent, inset: 9pt)[
  #grid(
    columns: (1fr, auto),
    gutter: 8mm,
    align: horizon,
    [
      #text(size: 12pt, weight: "bold")[入力する場所]
      #v(2pt)
      右側の画面にある #code([trial\$ ]) の#text(weight: "bold")[右側]に入力します。
      #raw("trial$") そのものは入力しません。
    ],
    [#code([trial\$ ls]) #h(4pt) → #key[Enter]],
  )
]

#v(4mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 5mm,
  [
    #command(
      [1], [ls], [ファイルの一覧を表示する],
      [ls],
      [「どんなファイルがあるか」を調べる基本のコマンド。],
    )
    #v(3mm)
    #command(
      [2], [cat], [ファイルの中身（テキスト）を見る],
      [cat welcome.txt],
      [#raw("cat") の後ろに半角スペースを空けてファイル名を指定。],
    )
    #v(3mm)
    #command(
      [3], [grep], [特定の言葉が含まれる行を探す],
      [grep Tux members.txt],
      [ファイルの中から「Tux」が含まれる行だけを表示。],
    )
  ],
  [
    #command(
      [4], [grep -n], [見つかった行の番号も表示する],
      [grep -n Tux sightings.txt],
      [#raw("-n") を付けると、何行目にあるかも一緒に表示。],
    )
    #v(3mm)
    #command(
      [5], [| と wc -l], [見つかった行の数を数える],
      [grep Tux sightings.txt | wc -l],
      [パイプ（#raw("|")）で左の検索結果を右の行数カウントへ渡す。],
    )
    #v(3mm)
    #card(fill: rgb("#FFF2D8"), stroke: gold)[
      #text(size: 11pt, weight: "bold", fill: gold)[答えが分かったら]
      #v(3pt)
      #code([ans 答え]) と入力して #key[Enter] で送信
      #v(3pt)
      例：#code([ans Tux])（半角スペースを空けて入力）
    ]
  ],
)

#v(4mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 5mm,
  card[
    #text(size: 11pt, weight: "bold")[入力を助けるキー]
    #v(4pt)
    #key[Tab]　ファイル名の続きを自動補完
    #v(3pt)
    #key[↑] #key[↓]　入力したコマンド履歴を呼び出し
    #v(3pt)
    #key[←] #key[→]　カーソルの入力位置を左右へ移動
    #v(3pt)
    #key[Ctrl] + #key[C]　実行中の処理を途中で止める（中断）
  ],
  card(fill: rgb("#F7E5EA"), stroke: danger)[
    #text(size: 11pt, weight: "bold", fill: danger)[困ったときは]
    #v(4pt)
    間違えても全く問題ありません！ エラーが出たときは、スペルミスや半角スペースの抜けを確認してみましょう。迷ったときは気軽にスタッフへ声をかけてください。
  ],
)

#v(4mm)

#align(center)[
  #text(size: 11pt, weight: "bold", fill: accent)[小さな道具（コマンド）を組み合わせることで、必要な情報を自分で探し出せます。]
]

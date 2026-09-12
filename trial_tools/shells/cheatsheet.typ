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
      右側の画面にある #code([trial\$ ]) の#text(weight: "bold")[右]へ入力します。
      #raw("trial$") 自体は入力しません。
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
      [1], [ls], [ファイルの一覧を見る],
      [ls],
      [まず「何があるか」を調べるコマンド。],
    )
    #v(3mm)
    #command(
      [2], [cat], [ファイルの中身を読む],
      [cat welcome.txt],
      [#raw("cat") の後に半角スペースとファイル名を入力。],
    )
    #v(3mm)
    #command(
      [3], [grep], [必要な言葉がある行を探す],
      [grep Tux members.txt],
      [「Tux」を含む行だけが表示されます。],
    )
  ],
  [
    #command(
      [4], [grep -n], [見つけた行の番号も表示する],
      [grep -n Tux sightings.txt],
      [#raw("-n") はコマンドの動きを変える「オプション」。],
    )
    #v(3mm)
    #command(
      [5], [| と wc -l], [見つけた行の数を数える],
      [grep Tux sightings.txt | wc -l],
      [#raw("|") で左の結果を右のコマンドへ渡します。],
    )
    #v(3mm)
    #card(fill: rgb("#FFF2D8"), stroke: gold)[
      #text(size: 11pt, weight: "bold", fill: gold)[答えが分かったら]
      #v(3pt)
      #code([ans 答え]) と入力して #key[Enter]
      #v(3pt)
      例：#code([ans Tux])
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
    #key[Tab]　ファイル名の続きを自動入力
    #v(3pt)
    #key[↑] #key[↓]　コマンドの履歴を移動
    #v(3pt)
    #key[←] #key[→]　入力位置を左右へ移動
    #v(3pt)
    #key[Ctrl] + #key[C]　動いているコマンドを止める
  ],
  card(fill: rgb("#F7E5EA"), stroke: danger)[
    #text(size: 11pt, weight: "bold", fill: danger)[困ったとき]
    #v(4pt)
    間違えても大丈夫です。エラーが出たら、スペルと半角スペースを確認しましょう。
    分からないときはスタッフを呼んでください。
  ],
)

#v(4mm)

#align(center)[
  #text(size: 11pt, weight: "bold", fill: accent)[小さなコマンドを組み合わせると、必要な情報を自分で探せます。]
]

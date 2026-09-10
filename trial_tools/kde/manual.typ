#let base = rgb("#FAF4ED")
#let surface = rgb("#FFFaf3")
#let text-color = rgb("#575279")
#let muted = rgb("#625E7C")
#let accent = rgb("#286983")
#let accent-soft = rgb("#DCE9E6")
#let gold = rgb("#965300")
#let danger = rgb("#94324C")

#set page(
  paper: "a4",
  margin: (x: 17mm, y: 15mm),
  fill: base,
  footer: context [
    #line(length: 100%, stroke: 0.5pt + rgb("#D8D2CA"))
    #v(3pt)
    #grid(
      columns: (1fr, auto),
      text(size: 8pt, fill: muted, [Linuxサークル — KDE Plasma 6 体験]),
      text(size: 8pt, fill: muted, counter(page).display("1 / 1", both: true)),
    )
  ],
)

#set text(
  font: "Noto Sans JP",
  size: 10.5pt,
  fill: text-color,
  lang: "ja",
)
#set par(leading: 0.72em, justify: false)
#set list(indent: 1.1em, body-indent: 0.5em, spacing: 0.45em)
#set enum(indent: 1.25em, body-indent: 0.5em, spacing: 0.5em)
#set heading(numbering: none)

#let title(body) = [
  #text(size: 25pt, weight: "bold")[#body]
  #v(2mm)
  #line(length: 100%, stroke: 2pt + accent)
  #v(5mm)
]

#let step(number, heading) = [
  #box(
    inset: (x: 7pt, y: 3pt),
    radius: 20pt,
    fill: accent,
    text(size: 9pt, weight: "bold", fill: white, [STEP #number]),
  )
  #h(7pt)
  #text(size: 18pt, weight: "bold")[#heading]
  #v(2mm)
]

#let card(body, fill: surface, stroke: rgb("#D8D2CA")) = block(
  width: 100%,
  inset: 10pt,
  radius: 5pt,
  fill: fill,
  stroke: 0.8pt + stroke,
  body,
)

#let route(body) = block(
  width: 100%,
  inset: (x: 10pt, y: 7pt),
  radius: 4pt,
  fill: accent-soft,
  stroke: 0.8pt + accent,
  text(weight: "bold", body),
)

#let action(number, heading, body) = [
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
      #text(size: 12pt, weight: "bold")[#heading]
      #v(1.5mm)
      #body
    ],
  )
  #v(4mm)
]

#let check(body) = [#text(fill: accent, weight: "bold")[□] #body]

#let screenshot(path, caption) = [
  #block(
    width: 100%,
    inset: 2pt,
    radius: 4pt,
    fill: white,
    stroke: 0.8pt + rgb("#C8C2BA"),
    clip: true,
  )[#image(path, width: 100%)]
  #v(1.5mm)
  #align(center)[#text(size: 8.5pt, fill: muted)[#caption]]
]

// ---------------------------------------------------------------------------
// 1: Start
// ---------------------------------------------------------------------------

#align(center)[
  #v(2mm)
  #text(size: 11pt, weight: "bold", fill: accent)[Linuxサークル　デスクトップ体験]
  #v(4mm)
  #text(size: 28pt, weight: "bold")[KDEで理想の]
  #text(size: 28pt, weight: "bold")[デスクトップをつくろう]
  #v(3mm)
  #text(size: 14pt, fill: muted)[KDE Plasma 6　参加者向けマニュアル]
]

#v(7mm)

#card(fill: accent-soft, stroke: accent)[
  #text(size: 15pt, weight: "bold")[今日のゴール]
  #v(4pt)

  壁紙、配色、パネル、ウィジェット、画面効果を組み合わせて、
  #text(weight: "bold")[「毎日使いたくなる」自分好みのデスクトップ]をつくります。

  正解はありません。気になるところから自由に試してみましょう！
]

#v(5mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 8mm,
  card[
    #text(size: 13pt, weight: "bold", fill: accent)[基本コース　約10分]
    #v(4pt)
    #check[壁紙を変える] \
    #check[色やテーマを選ぶ] \
    #check[パネルを動かす] \
    #check[ウィジェットを置く]
  ],
  card[
    #text(size: 13pt, weight: "bold", fill: gold)[追加チャレンジ]
    #v(4pt)
    #check[画面効果を試す] \
    #check[使いやすい配置にする] \
    #check[スタッフに作品を見せる]
  ],
)

#v(5mm)

#text(size: 16pt, weight: "bold")[はじめる前に]
#v(3mm)

#action([1], [まず、画面の何もないところを右クリック], [
  メニューが表示されれば準備完了です。デスクトップ設定を開く各種メニューが並んでいます。
])

#action([2], [困ったら「システム設定」で検索], [
  画面左下のアプリケーションメニューから #text(weight: "bold")[システム設定] を開き、左上の検索バーに
  「壁紙」「色」「効果」など、変えたい設定のキーワードを入力します。
])

#action([3], [失敗しても大丈夫！], [
  このPCは体験用です。「元に戻せなくなった」「パネルが消えてしまった」「操作が分からなくなった」というときは、遠慮なくスタッフをお呼びください。
])

#card(fill: rgb("#F7E5EA"), stroke: danger)[
  #text(weight: "bold", fill: danger)[お願い]
  個人情報の入力はご遠慮ください。また、アカウントへのログイン、ファイルの削除、テーマやウィジェットの新規ダウンロードはお控えください。
]

#pagebreak()

// ---------------------------------------------------------------------------
// 2: Wallpaper
// ---------------------------------------------------------------------------

#step("1A", [壁紙を変える])

#text(fill: muted)[まずはデスクトップの印象を大きく変える壁紙から。好みの画像を選んでみましょう。]
#v(4mm)

#route[デスクトップを右クリック →「デスクトップと壁紙を設定…」]
#v(3mm)

#screenshot("images/wallpaper.png", [壁紙の設定画面。一覧から好みの画像をクリックして選びます。])
#v(4mm)

#action([1], [好きな画像を選ぶ], [
  一覧から好みの画像をクリックして選びます。
])
#action([2], [表示方法を調整する], [
  画像の見え方が合わないときは、画面上部にある「配置」メニュー（拡大/縮小と切り取り、中央揃えなど）から変更できます。
])
#action([3], [「適用」を押す], [
  右下の「適用」を押し、背景が変わったことを確認します。別の画像を選び直しても構いません。
])

#pagebreak()

// ---------------------------------------------------------------------------
// 2B: Theme and color
// ---------------------------------------------------------------------------

#step("1B", [テーマや配色を変える])

#text(fill: muted)[配色やアイコン、ウィンドウの雰囲気を一括で変更したり、色だけを調整したりできます。]
#v(3mm)

#route[アプリケーションメニュー → システム設定 → 色とテーマ]
#v(3mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 4mm,
  screenshot("images/global_theme.png", [「色とテーマ」の画面。上部の一覧からテーマを選びます。]),
  screenshot("images/check_in_change_theme.png", [適用時の確認画面。レイアウトを維持したい場合はチェックを外します。]),
)
#v(3mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 7mm,
  card[
    #text(size: 12pt, weight: "bold")[まとめて変更]
    #v(3pt)
    #text(weight: "bold")[グローバルテーマ]を開きます。

    テーマを選んで「適用」を押します。配色やアイコン、ウィンドウの雰囲気を一括で変更できます。
  ],
  card[
    #text(size: 12pt, weight: "bold")[色だけ変更]
    #v(3pt)
    #text(weight: "bold")[色彩]を開きます。

    明るい配色や暗い配色から1つ選び「適用」を押します。壁紙との読みやすさも確かめましょう。
  ],
)

#v(4mm)

#card(fill: rgb("#FFF2D8"), stroke: gold)[
  #text(weight: "bold", fill: gold)[ポイント]
  グローバルテーマはパネル配置まで変わる場合があります。今の配置を維持したいときは、適用確認画面で #text(weight: "bold")[デスクトップとウィンドウのレイアウト] のチェックを外します。
]

#v(4mm)

#text(size: 14pt, weight: "bold")[ここまでのチェック]
#v(3mm)

#check[好みの壁紙に変更した] \
#check[明るい配色と暗い配色を比べた] \
#check[壁紙の上でも文字やアイコンが読みやすい]

#pagebreak()

// ---------------------------------------------------------------------------
// 3: Panel (Overview & Screenshots)
// ---------------------------------------------------------------------------

#v(2mm, weak: false)
#step("2", [パネルをつくり変える])

#text(fill: muted)[画面端にあるバーが「パネル」です。アプリの起動や切り替え、時計の確認などができます。]
#v(4mm)

#route[パネルの何もないところを右クリック →「パネル設定を表示」]
#v(3mm)

#screenshot("images/panel_config_start.png", [パネルの何もないところを右クリックし、メニュー下部の「パネル設定を表示」を選びます。])
#v(4mm)

#screenshot("images/panel_editing_mode.png", [パネルの編集モード。画面右側の「パネル設定」で位置、配置、幅、表示方法などを調整できます。])

#pagebreak()

// ---------------------------------------------------------------------------
// 3B: Panel adjustments
// ---------------------------------------------------------------------------

#title[パネルを調整する]
#text(fill: muted)[前ページの「パネル設定」画面を見ながら、順番に動かして違いを確かめてみましょう。]
#v(4mm)

#action([1], [場所を変える], [
  #text(weight: "bold")[画面の端] または #text(weight: "bold")[位置] をドラッグし、上下左右の好きな位置へ動かします。使いやすそうな場所を選びましょう。
])

#action([2], [太さを変える], [
  #text(weight: "bold")[パネルの高さ]（縦置き時は幅）を動かします。アイコンが見やすい太さに調整しましょう。
])

#action([3], [長さと並び方を変える], [
  #text(weight: "bold")[パネルの長さ] や #text(weight: "bold")[配置] を変えます。画面全体、中央寄せ、端寄せなどを試せます。
])

#action([4], [表示方法を選ぶ], [
  常に表示する設定のほか、ウィンドウが重なったとき自動で隠す設定などがあります。好みの動作を選びましょう。
])

#action([5], [部品を並べ替える], [
  パネル上のアイコンや時計をドラッグして並べ替えます。終わったら #text(weight: "bold")[編集モードを終了] を押します。
])

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 5mm,
  card[
    #align(center)[#text(size: 12pt, weight: "bold", fill: accent)[定番スタイル]]
    #v(2pt)
    画面下に配置。迷いにくく誰でも使いやすい。
  ],
  card[
    #align(center)[#text(size: 12pt, weight: "bold", fill: accent)[すっきり]]
    #v(2pt)
    下部中央に配置。Dock風でモダンな見た目。
  ],
  card[
    #align(center)[#text(size: 12pt, weight: "bold", fill: accent)[作業重視]]
    #v(2pt)
    左右の端に縦置き。画面を上下広く使える。
  ],
)

#v(4mm)

#card(fill: rgb("#F7E5EA"), stroke: danger)[
  #text(weight: "bold", fill: danger)[パネルが消えた？]
  自動で隠す設定の場合、画面の端にマウスカーソルを近づけると再表示されます。見失ったり誤って削除してしまったりしたときは、遠慮なくスタッフをお呼びください。
]

#v(4mm)

#text(size: 14pt, weight: "bold")[自分の配置を決めよう]
#v(3mm)

#check[画面のどの位置に置くか決めた（上下左右）] \
#check[使いやすいパネルの太さ・長さに調整した] \
#check[ウィンドウを開いても邪魔にならない]

#pagebreak()

// ---------------------------------------------------------------------------
// 4: Widgets, effects and finish
// ---------------------------------------------------------------------------

#step("3", [機能と動きを足す])

#grid(
  columns: (1fr, 1fr),
  gutter: 8mm,
  [
    #text(size: 15pt, weight: "bold")[A　ウィジェット]
    #v(3mm)
    #route[パネルを右クリック →「パネル設定を表示」→「ウィジェットを追加」]
    #v(2mm)

    時計やメモ、システム情報などを画面に常駐できる小型ツールです。

    #v(3mm)
    + 一覧から気になるツールを探す
    + デスクトップやパネルへドラッグする
    + 好きな場所に置き、大きさを調整する
    + 不要になったら右クリックして削除する

    #v(2mm)
    #card[
      #text(weight: "bold", fill: accent)[おすすめ]
      アナログ時計、付箋、カラーピッカー、システムモニター
    ]
  ],
  [
    #text(size: 15pt, weight: "bold")[B　画面効果]
    #v(3mm)
    #route[システム設定 → ウィンドウの管理 → デスクトップ効果]
    #v(2mm)

    検索欄に効果名を入力してスイッチをオンにし、「適用」を押します。実際にウィンドウを動かして試してみましょう。

    #v(3mm)
    #check[揺れるウィンドウ（ぐにゃぐにゃ）] \
    #check[マジックランプ（滑らかな最小化）] \
    #check[概要（全ウィンドウ一覧）] \
    #check[画面端のアクション]

    #v(2mm)
    #card(fill: rgb("#FFF2D8"), stroke: gold)[
      効果の名称や設定場所は環境により少し異なります。見つからないときは検索機能を使うかスタッフに聞いてください。
    ]
  ],
)

#v(4mm)

#screenshot("images/desktop_effect.png", [「デスクトップ効果」の設定画面。上部の検索欄に効果名を入力すると目的の機能を絞り込めます。])

#pagebreak()

// ---------------------------------------------------------------------------
// 5: Wrap-up and Finish
// ---------------------------------------------------------------------------

#title[完成！ こだわりの画面を見せてみよう]

#text(size: 14pt, weight: "bold")[体験チェックリスト]
#v(3mm)

#card(fill: accent-soft, stroke: accent)[
  #grid(
    columns: (1fr, 1fr),
    gutter: 8mm,
    [
      #check[好みの壁紙と色を選んだ] \
      #check[パネルを使いやすく整えた] \
      #check[ウィジェットを配置した]
    ],
    [
      #check[画面効果の動きを試した] \
      #check[文字や時計が見やすい] \
      #check[スタッフに完成形を見せた]
    ],
  )
]

#v(8mm)

#text(size: 14pt, weight: "bold")[覚えておきたい便利なショートカット]
#v(4mm)

#table(
  columns: (35mm, 1fr),
  inset: 6pt,
  stroke: 0.6pt + rgb("#D8D2CA"),
  fill: (_, row) => if calc.even(row) { surface } else { base },
  table.header([#text(weight: "bold")[操作]], [#text(weight: "bold")[できること]]),
  [#text(font: "Noto Sans Mono CJK JP", weight: "bold")[Meta]], [アプリケーションメニューを開く],
  [#text(font: "Noto Sans Mono CJK JP", weight: "bold")[Meta + W]], [開いている全ウィンドウを一覧表示する（概要）],
  [#text(font: "Noto Sans Mono CJK JP", weight: "bold")[Alt + Tab]], [開いているウィンドウを素早く切り替える],
  [#text(font: "Noto Sans Mono CJK JP", weight: "bold")[Meta + 矢印]], [ウィンドウを画面半分に並べる],
  [#text(font: "Noto Sans Mono CJK JP", weight: "bold")[Alt + F2]], [アプリや設定を検索・起動する],
)

#v(8mm)

#align(center)[
  #text(
    size: 13pt,
    weight: "bold",
    fill: accent,
  )[Linuxなら、見た目も操作感も思い通りにカスタマイズできます。]
  #v(2.5mm)
  #text(size: 10.5pt)[気になる機能や使い方の質問があれば、お気軽にスタッフまでお声がけください！]
]

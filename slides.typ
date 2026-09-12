#import "@preview/touying:0.7.4": *
#import themes.simple: *

#let pine = rgb("#205D7A")
#let ink = rgb("#202020")
#let muted = rgb("#5F6B70")
#let pale = rgb("#E7F1F5")
#let soft = rgb("#F3F6F7")
#let rule = rgb("#C4CDD1")

#show: simple-theme.with(
  aspect-ratio: "16-9",
  primary: pine,
  header: [Linux サークル｜学園祭展示],
  footer: [Linuxを知る・触れる・楽しむ],
  config-info(
    title: [Linuxって、何だろう？],
    subtitle: [自由なコンピューターの世界へ],
    author: [Linux サークル],
    date: [学園祭展示 2026],
  ),
)

#set text(font: "Noto Sans JP", fill: ink, lang: "ja")
#set par(leading: 0.72em)
#show strong: set text(fill: pine)

#let card(title, body, accent: pine, fill: white) = block(
  width: 100%,
  inset: 0.62em,
  radius: 5pt,
  fill: fill,
  stroke: 0.8pt + rule,
  [
    #text(size: 0.78em, weight: "bold", fill: accent)[#title]
    #v(0.28em)
    #text(size: 0.64em, fill: ink)[#body]
  ],
)

#let pill(body, fill: pale, color: pine) = box(
  inset: (x: 0.55em, y: 0.22em),
  radius: 99pt,
  fill: fill,
  text(size: 0.62em, weight: "bold", fill: color, body),
)

#let arrow = text(size: 1.1em, weight: "bold", fill: pine)[→]

#title-slide[
  #align(center)[
    #text(size: 2.05em, weight: "bold", fill: ink)[Linuxって、何だろう？]
    #v(0.45em)
    #text(size: 0.92em, fill: pine)[自由なコンピューターの世界へ]
    #v(1.15em)
    #line(length: 42%, stroke: 2pt + pine)
    #v(0.8em)
    #text(size: 0.62em, fill: muted)[Linux サークル｜学園祭展示 2026]
  ]
]

== 今日の道のり

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 0.55em,
  card([01], [Linuxは何をしている？], fill: pale),
  card([02], [デスクトップは選べる], fill: pale),
  card([03], [黒い画面の正体], fill: pale),
  card([04], [Linux、35年の旅], fill: pale),
)

#v(1.15em)
#align(center)[
  #text(size: 1.02em, weight: "bold")[
    身近なところから始めて、
    #text(fill: pine)[操作]と#text(fill: pine)[歴史]まで見ていきます。
  ]
]

== Linuxは、OSの心臓部

#align(center)[
  #grid(
    columns: (1fr, auto, 1fr, auto, 1fr),
    gutter: 0.5em,
    align: center + horizon,
    card([使うもの], [ブラウザー\
      ゲーム・アプリ]),
    arrow,
    card([つなぐもの], [#text(size: 1.15em, weight: "bold", fill: pine)[OS]], fill: pale),
    arrow,
    card([動かすもの], [CPU・メモリ\
      ストレージ]),
  )
]

#v(0.85em)
#align(center)[
  #block(width: 82%, inset: 0.65em, fill: soft, radius: 5pt)[
    OSは、アプリがハードウェアを適切に使えるように仲介する
    #strong[コンピューターの土台]です。
  ]
]

#v(0.6em)
#align(center)[#text(size: 0.72em, fill: muted)[WindowsやmacOSと同じように、LinuxベースのOSも普段のPCで使えます。]]

== じつは、もう使っている

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.55em,
  card([インターネット], [Webサイト、クラウド、ネットワーク機器]),
  card([研究と産業], [スーパーコンピューター、自動車、組み込み機器]),
  card([手のひら], [Androidスマートフォンの根幹にもLinux]),
)

#v(0.8em)
#align(center)[
  #block(width: 90%, inset: 0.75em, fill: pale, radius: 6pt, stroke: 1.2pt + pine)[
    #align(center)[
      #text(size: 1.05em, weight: "bold", fill: pine)[見えない裏側から、いつもの端末まで。]
      #v(0.2em)
      #text(size: 0.7em)[Linuxは、すでに私たちの日常を支えています。]
    ]
  ]
]

== 「ひとつ」ではないLinux

#text(size: 0.72em)[
  Linuxカーネルに基本ソフトや管理ツール、デスクトップ環境を組み合わせ、
  すぐ使える形にしたものが#strong[ディストリビューション]です。
]

#v(0.6em)
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 0.45em,
  card([Ubuntu], [始めやすく、広く普及]),
  card([Fedora], [新しい技術を積極採用]),
  card([Arch Linux], [最小構成から自分で組む]),
  card([NixOS], [設定をコードで一括管理]),
)

#v(0.75em)
#align(center)[
  #text(size: 0.82em, weight: "bold")[目的に合わせて、#text(fill: pine)[自分に合う入口]を選べます。]
]

== デスクトップ環境も選べる

#set text(size: 0.86em)

#grid(
  columns: (1fr, 1.55fr),
  gutter: 0.7em,
  [
    #block(width: 100%, inset: 0.55em, fill: soft, radius: 5pt, stroke: 0.8pt + rule)[
      #text(size: 0.72em, weight: "bold", fill: pine)[画面と操作]
      #v(0.12em)
      #strong[デスクトップ環境]　KDE Plasma / GNOME / Xfce
      #v(0.35em)
      #line(length: 100%, stroke: 0.6pt + rule)
      #v(0.28em)
      #text(size: 0.72em, weight: "bold", fill: pine)[OSの中核]
      #h(0.6em)
      Linuxカーネル
      #v(0.35em)
      #line(length: 100%, stroke: 0.6pt + rule)
      #v(0.28em)
      #text(size: 0.72em, weight: "bold", fill: pine)[物理部分]
      #h(0.6em)
      ハードウェア
    ]
  ],
  [
    #text(size: 0.77em)[
      Linuxでは、人とシステムをつなぐ画面や操作部分を
      #strong[丸ごと選び直せます]。
    ]
    #v(0.65em)
    #card([変えられるのは見た目だけ？], [
      いいえ。ウィンドウの並べ方、アプリの起動方法、
      マウス中心かキーボード中心か——#strong[操作スタイルそのもの]を選べます。
    ], fill: soft)
  ],
)

== 三つの代表的な選択肢

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.55em,
  card([KDE Plasma], [
    #pill[自由自在]
    #v(0.35em)
    親しみやすい構成から個性的なレイアウトまで、細かく調整できます。
  ], fill: pale),
  card([GNOME], [
    #pill[集中]
    #v(0.35em)
    洗練された統一感ある操作体系。無駄を省き、作業へ集中できます。
  ]),
  card([Xfce], [
    #pill[軽快]
    #v(0.35em)
    シンプルで伝統的な構成。限られた性能のPCでも軽快に動きます。
  ]),
)

#v(0.8em)
#align(center)[#text(size: 0.8em, weight: "bold")[正解はひとつではなく、#text(fill: pine)[自分に合うもの]が正解。]]

== KDE Plasmaなら、ここまで変わる

#grid(
  columns: (1.18fr, 1fr),
  gutter: 0.75em,
  [
    #image("posters/images/niri_desktop.png", width: 100%)
    #v(0.15em)
    #text(size: 0.44em, fill: muted)[参考：niriで構成したデスクトップの例]
  ],
  [
    #set text(size: 0.65em)
    - パネルの位置・サイズ・表示項目
    - 配色、テーマ、アイコン、フォント
    - ウィンドウの配置や画面効果
    - 仮想デスクトップ
    - キーボードショートカット
    - 時計や付箋などのウィジェット

    #v(0.35em)
    #block(inset: 0.5em, fill: pale, radius: 4pt)[
      #strong[会場の体験PC]では、設定画面から実際にカスタマイズできます。
    ]
  ],
)

== 黒い画面の登場人物

#grid(
  columns: (1fr, auto, 1fr, auto, 1fr),
  gutter: 0.35em,
  align: center + horizon,
  card([Terminal], [文字を入力し、結果を表示する画面]),
  arrow,
  card([Shell], [コマンドを解釈し、OSへ伝える仲介役], fill: pale),
  arrow,
  card([Command], [特定の仕事を受け持つプログラム]),
)

#v(0.85em)
#align(center)[
  #block(width: 88%, inset: 0.75em, fill: rgb("#202624"), radius: 5pt)[
    #text(font: "Noto Sans Mono CJK JP", size: 0.86em, weight: "bold", fill: white)[
      #text(fill: rgb("#8FD3B5"))[\$] mkdir photos
    ]
  ]
]

#v(0.55em)
#align(center)[#text(size: 0.72em)[CLIは、コンピューターへの指示を#strong[文字で直接伝える]操作スタイルです。]]

== GUIとCLIは、得意分野が違う

#table(
  columns: (28%, 36%, 36%),
  inset: 0.42em,
  stroke: 0.6pt + rule,
  fill: (x, y) => if y == 0 { pale },
  align: (left, left, left),
  [#strong[やりたいこと]], [#strong[GUI]], [#strong[CLI]],
  [フォルダを作る], [右クリック → 新規作成], [`mkdir photos`],
  [フォルダを移動], [ダブルクリック], [`cd photos`],
  [一覧を見る], [ファイル画面で確認], [`ls`],
  [文字を探す], [検索バーへ入力], [`rg keyword`],
)

#v(0.55em)
#align(center)[
  #text(size: 0.72em)[対立ではなく、#strong[作業と目的に合わせて使い分ける]のが基本です。]
]

== 小さな道具を、パイプでつなぐ

#align(center)[
  #block(width: 100%, inset: 0.55em, fill: rgb("#202624"), radius: 5pt)[
    #text(font: "Noto Sans Mono CJK JP", size: 0.73em, weight: "bold", fill: white)[
      #text(fill: rgb("#8FD3B5"))[\$] cat votes.txt | sort | uniq -c | sort -nr
    ]
  ]
]

#v(0.6em)
#grid(
  columns: (1fr, auto, 1fr, auto, 1fr, auto, 1fr),
  gutter: 0.23em,
  align: center + horizon,
  card([読む], [`cat`\ ファイルを出力]),
  arrow,
  card([並べる], [`sort`\ 同じ項目をまとめる]),
  arrow,
  card([数える], [`uniq -c`\ 件数を集計]),
  arrow,
  card([順位づけ], [`sort -nr`\ 多い順に並べる], fill: pale),
)

#v(0.6em)
#align(center)[
  #pill[stdout → | → stdin]
  #h(0.45em)
  #text(size: 0.65em)[文字の流れを、次のコマンドへ直接渡します。]
]

== CLIが力を発揮する場面

#set text(size: 0.88em)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.55em,
  card([繰り返す], [同じ操作を何度も正確に実行する]),
  card([まとめて扱う], [大量のファイルを一括処理する]),
  card([残して共有する], [操作手順をテキストで記録する]),
  card([自動化する], [一連の処理をスクリプトにする]),
  card([遠くを操作する], [ネットワーク越しのサーバーを扱う]),
  card([画面も作れる], [Vim・lazygit・btopなどのTUI]),
)

#v(0.28em)
#align(center)[#text(size: 0.76em, weight: "bold", fill: pine)[会場では、コマンドを使った探索ゲームを体験できます。]]

== Linux、35年の旅｜はじまり

#set text(size: 0.8em)

#grid(
  columns: (auto, 1fr),
  column-gutter: 0.55em,
  row-gutter: 0.2em,
  align: (right + top, left + top),
  [#pill[1969]], [#card([UNIX誕生], [小さな道具を組み合わせる思想が生まれる])],
  [#pill[1983]], [#card([GNU Project], [自由に利用・学習・改変・再配布できるOSを目指す])],
  [#pill[1991]], [#card([Linux、始まる], [学生リーナス・トーバルズがカーネル0.01を公開], fill: pale)],
  [#pill[1992]], [#card([GPLを採用], [共同開発とGUI環境への道が開かれる])],
  [#pill[1993–96]], [#card([世界へ広がる], [Debianなどの登場、Linux 1.0、Tux、複数CPU対応])],
)

== Linux、35年の旅｜日常へ

#set text(size: 0.8em)

#grid(
  columns: (auto, 1fr),
  column-gutter: 0.55em,
  row-gutter: 0.2em,
  align: (right + top, left + top),
  [#pill[2003]], [#card([Linux 2.6], [大規模システム、応答性、セキュリティを強化])],
  [#pill[2005]], [#card([Git誕生], [世界規模のLinux開発を支えるために開発])],
  [#pill[2008]], [#card([手のひらへ], [Android端末を通じて世界中の日常へ])],
  [#pill[2013]], [#card([SteamOS], [Linuxで商用ゲームを楽しむ流れが加速])],
  [#pill[2022–26]], [#card([Linux 6.x、そして7.xへ], [Rust対応を進めながら、世界中の協力で進化を継続], fill: pale)],
)

== Linuxは「選べる」

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.55em,
  card([使う場所], [サーバーからスマホ、普段のPCまで]),
  card([使い方], [デスクトップもCLIも、目的に合わせて]),
  card([育て方], [設計図を公開し、世界中で協力]),
)

#v(0.9em)
#align(center)[
  #text(size: 1.15em, weight: "bold")[
    誰かに決められた完成品ではなく、\
    #text(fill: pine)[自分の目的に合わせて選べる環境。]
  ]
]

#v(0.65em)
#align(center)[#pill[次は、会場のPCで実際に触ってみよう！]]

== 参考資料

#set text(size: 0.58em)

- Linux Kernel Archives — #link("https://www.kernel.org/linux.html")[kernel.org/linux.html]
- Linux Releases — #link("https://www.kernel.org/releases.json")[kernel.org/releases.json]
- GNU Initial Announcement — #link("https://www.gnu.org/gnu/initial-announcement.html")[gnu.org/gnu/initial-announcement.html]
- Debian Project History — #link("https://www.debian.org/doc/manuals/project-history/")[debian.org/doc/manuals/project-history/]
- A Short History of Git — #link("https://git-scm.com/book/en/v2/Getting-Started-A-Short-History-of-Git")[git-scm.com/book]
- Android Common Kernels — #link("https://source.android.com/docs/core/architecture/kernel")[source.android.com/docs/core/architecture/kernel]
- Rust in the Linux kernel — #link("https://www.kernel.org/doc/html/latest/rust/")[kernel.org/doc/html/latest/rust/]

#v(0.65em)
#text(fill: muted)[内容は `posters/1_linux.typ`〜`posters/4_linux_timeline.typ` をもとに、投影用に再構成しました。]

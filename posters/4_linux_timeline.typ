#let base = white
#let text-color = rgb("#202020")
#let muted = rgb("#555555")
#let pine = rgb("#205D7A")
#let border = rgb("#BBBBBB")

#let setup(title) = {
  align(center)[
    #text(size: 11.8pt, weight: "bold", fill: pine)[Linux サークル｜学園祭展示]
    #v(5mm)
    #text(size: 40pt, weight: "bold")[#title]
  ]
  v(7.1mm)
  line(length: 100%, stroke: 1.8pt + pine)
  v(8.5mm)
}

#let lead(body) = align(center)[
  #text(size: 22pt, weight: "medium", body)
]

#let footer(body) = {
  v(1fr)
  line(length: 100%, stroke: 1.1pt + pine)
  v(4.2mm)
  align(center)[#text(size: 14.8pt, weight: "bold", fill: pine)[#body]]
}

#let timeline-events = (
  (
    year: [1969],
    title: [UNIX 誕生],
    body: [Bell研究所でUNIXが誕生。「小さな道具を組み合わせる」という設計思想が、後のLinux文化の礎となる。],
    kind: "roots",
  ),
  (
    year: [1983],
    title: [GNU Project],
    body: [リチャード・ストールマンが、自由に利用・学習・改変・再配布ができるUNIX互換システムの開発を宣言。],
    kind: "freedom",
  ),
  (
    year: [1991],
    title: [Linux、始まる],
    body: [ヘルシンキ大学の学生リーナス・トーバルズがPC向けOSの開発を告知し、カーネル0.01（10,239行）を公開。],
    kind: "birth",
  ),
  (
    year: [1992],
    title: [GPL とGUI環境],
    body: [バージョン0.12でGNU GPLを採用。0.95ではX Window Systemが動き、オープンな共同開発とGUIへの道が開く。],
    kind: "freedom",
  ),
  (
    year: [1993],
    title: [ディストリビューション登場],
    body: [SlackwareやDebianが登場。カーネルと多彩なソフトウェアを、導入・管理しやすいパッケージとして提供。],
    kind: "ecosystem",
  ),
  (
    year: [1994],
    title: [Linux 1.0],
    body: [3月14日に正式版1.0を公開。約17.6万行のコードからなる、PC向けの実用的なカーネルへと成長を遂げた。],
    kind: "birth",
  ),
  (
    year: [1995],
    title: [PCの外へ],
    body: [バージョン1.2でAlpha、SPARC、MIPSに対応。一般的なPCの枠を超え、多様なCPU環境へと活動の場を広げる。],
    kind: "freedom",
  ),
  (
    year: [1996],
    title: [Tux と Linux 2.0],
    body: [マルチCPUに対応した2.0を公開。ラリー・ユーイングが描いたペンギン「Tux」が公式マスコットに。],
    kind: "roots",
  ),
  (
    year: [2003],
    title: [Linux 2.6],
    body: [大規模システムへの対応力を強化。ALSA（音響）、カーネルプリエンプション、SELinuxなどを統合。],
    kind: "roots",
  ),
  (
    year: [2005],
    title: [Git が生まれる],
    body: [巨大化するカーネル開発を効率的に支えるため、リーナスらが分散型バージョン管理システム「Git」を開発。],
    kind: "birth",
  ),
  (
    year: [2008],
    title: [手のひらのLinux],
    body: [Linuxカーネルを基盤とするAndroid端末が登場。スマートフォンを通じて世界中の人々の日常へ浸透する。],
    kind: "freedom",
  ),
  (
    year: [2011],
    title: [Linux 3.0・20周年],
    body: [大きな仕様変更ではなく、次の10年への節目として3.0へ。毎回のリリースに世界中から千人以上が参加。],
    kind: "ecosystem",
  ),
  (
    year: [2013],
    title: [SteamOS 発表],
    body: [Valveが初代SteamOS（Debianベース）を発表。Linuxデスクトップで本格的な商用ゲームを遊ぶ流れが加速。],
    kind: "birth",
  ),
  (
    year: [2022],
    title: [Linux 6.x と Rust],
    body: [バージョン6.0を公開。続く6.1では、メモリ安全性を重視するRust言語によるカーネル開発の初期サポートを統合。],
    kind: "ecosystem",
  ),
  (
    year: [2026.09],
    title: [そして、いま],
    body: [最新安定版は *7.2.4*。世界中の開発者がパッチを送り続け、35年前に始まった学生の挑戦は今も進化中。],
    kind: "today",
  ),
)

#let references = (
  (label: [Linuxカーネル概要], display: [kernel.org/linux.html], url: "https://www.kernel.org/linux.html"),
  (label: [最新リリース情報], display: [kernel.org/releases.json], url: "https://www.kernel.org/releases.json"),
  (label: [Linux公式史料], display: [kernel.org/doc/mirror/ols2011.pdf], url: "https://www.kernel.org/doc/mirror/ols2011.pdf"),
  (label: [GNU初期発表], display: [gnu.org/gnu/initial-announcement.html], url: "https://www.gnu.org/gnu/initial-announcement.html"),
  (label: [Debian公式史], display: [debian.org/doc/manuals/project-history/], url: "https://www.debian.org/doc/manuals/project-history/"),
  (label: [Git公式史], display: [git-scm.com/book → A Short History of Git], url: "https://git-scm.com/book/en/v2/Getting-Started-A-Short-History-of-Git"),
  (label: [Androidカーネル], display: [source.android.com/docs/core/architecture/kernel], url: "https://source.android.com/docs/core/architecture/kernel"),
  (label: [SteamOS], display: [store.steampowered.com/steamos/], url: "https://store.steampowered.com/steamos/"),
  (label: [Tux利用条件], display: [kernel.org/faq.html], url: "https://www.kernel.org/faq.html"),
  (label: [Slackware公式史], display: [docs.slackware.com/slackbook:intro_to_slackware], url: "https://docs.slackware.com/slackbook%3Aintro_to_slackware"),
  (label: [Android 1.0発表], display: [android-developers.googleblog.com — 2008-10-21], url: "https://android-developers.googleblog.com/2008/10/android-is-now-open-source.html"),
  (label: [LinuxへのRust統合], display: [kernel.org/doc/html/latest/rust/], url: "https://www.kernel.org/doc/html/latest/rust/index.html"),
)

#let timeline-height = 387mm
#let card-height = 25.1mm

#set page(paper: "a2", margin: 17mm, fill: base)
#set text(font: "Noto Sans JP", size: 15.6pt, fill: text-color, lang: "ja")
#set par(leading: 0.68em)
#set heading(numbering: none)

#let card(year, title, body, side: "left", current: false) = block(
  width: 100%,
  height: card-height,
  inset: (x: 5.2mm, y: 2.4mm),
  fill: if current { rgb("#E7F1F5") } else { base },
  stroke: (
    left: if side == "left" { 2.5pt + pine } else { 1pt + border },
    right: if side == "right" { 2.5pt + pine } else { 1pt + border },
    top: 1pt + border,
    bottom: 1pt + border,
  ),
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 3mm,
      align: (left + top, left + top),
      text(size: 14.1pt, weight: "bold", fill: pine, year),
      text(size: 16.2pt, weight: "bold", title),
    )
    #v(0.6mm)
    #text(size: 12.7pt, fill: muted, body)
  ],
)

#let empty-card = block(width: 100%, height: card-height)

#let dot = block(width: 100%, height: card-height)[
  #align(center + horizon)[
    #circle(radius: 2.7mm, fill: base, stroke: 1.7pt + pine)[
      #align(center + horizon)[#circle(radius: 1mm, fill: pine)]
    ]
  ]
]

#let event(item, side: "left") = {
  let current = item.kind == "today"
  if side == "left" {
    grid(
      columns: (1fr, 11mm, 1fr),
      gutter: 5mm,
      card(item.year, item.title, item.body, side: side, current: current),
      dot,
      empty-card,
    )
  } else {
    grid(
      columns: (1fr, 11mm, 1fr),
      gutter: 5mm,
      empty-card,
      dot,
      card(item.year, item.title, item.body, side: side, current: current),
    )
  }
}

#setup[Linux、35年の旅]

#lead[ひとりの学生の趣味から、世界を支えるOSカーネルへ。]

#v(7mm)

#block(width: 100%, height: timeline-height)[
  #place(center, dy: 5mm)[
    #line(length: 373mm, angle: 90deg, stroke: 1.5pt + pine)
  ]

  #for (index, item) in timeline-events.enumerate() {
    let side = if calc.rem(index, 2) == 0 { "left" } else { "right" }
    event(item, side: side)

    if index < timeline-events.len() - 1 {
      v(1fr)
    }
  }
]

#v(4mm)

#block(
  width: 100%,
  inset: (x: 5mm, y: 3.5mm),
  stroke: 1pt + border,
)[
  #grid(
    columns: (auto, 1fr),
    gutter: 4mm,
    align: horizon,
    text(size: 13.7pt, weight: "bold", fill: pine)[参考資料 / REFERENCES],
    align(right)[#text(size: 9pt, fill: muted)[PDFでは各URLをクリックできます　・　参照日 2026-09-11]],
  )
  #v(2mm)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 5mm,
    row-gutter: 1.5mm,
    ..references.enumerate().map(((index, reference)) => link(reference.url)[
      #text(size: 9.5pt, weight: "bold", fill: pine)[#(index + 1). #reference.label]
      #h(1mm)
      #text(size: 8.5pt, fill: muted)[#reference.display]
    ]),
  )
]

#footer[Linuxの歴史は、いまも世界中の開発者によって更新されています]

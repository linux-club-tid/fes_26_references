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

#let ink = rgb("#17201d")
#let paper = rgb("#f7f3e8")
#let green = rgb("#2f7d5a")
#let green-dark = rgb("#19543b")
#let lime = rgb("#b8d96b")
#let gold = rgb("#f0b84b")
#let blue = rgb("#5aa9c7")
#let coral = rgb("#e7785b")
#let muted = rgb("#69746f")

#let timeline-height = 445.5mm
#let card-height = 26.9mm

#set page(
  paper: "a2",
  margin: (x: 17.7mm, y: 14.1mm),
  fill: paper,
)

#set text(
  font: "Noto Sans CJK JP",
  size: 13.4pt,
  fill: ink,
)

#set par(leading: 0.62em)

#let pill(body, fill: green, text-fill: white) = box(
  inset: (x: 3.2mm, y: 1mm),
  radius: 70pt,
  fill: fill,
  text(fill: text-fill, weight: "bold", size: 8.5pt, body),
)

#let card(year, title, body, accent: green, side: "left") = block(
  width: 100%,
  height: card-height,
  inset: (x: 5.7mm, y: 3.2mm),
  radius: 2.1mm,
  fill: white,
  stroke: (
    left: if side == "right" { 0.7pt + rgb("#d8ddd7") } else { 2.8pt + accent },
    right: if side == "right" { 2.8pt + accent } else { 0.7pt + rgb("#d8ddd7") },
    top: 0.7pt + rgb("#d8ddd7"),
    bottom: 0.7pt + rgb("#d8ddd7"),
  ),
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 2.1mm,
      align: (left + top, left + top),
      pill(year, fill: accent), text(size: 15.6pt, weight: "bold", title),
    )
    #v(1.4mm)
    #text(size: 10.6pt, fill: rgb("#35413c"), body)
  ],
)

#let empty-card = block(width: 100%, height: card-height)

#let dot(accent: green) = block(width: 100%, height: card-height)[
  #align(center + horizon)[
    #circle(radius: 3mm, fill: paper, stroke: 1.8pt + accent)[
      #align(center + horizon)[#circle(radius: 1.2mm, fill: accent)]
    ]
  ]
]

#let accent-for(kind) = if kind == "roots" {
  blue
} else if kind == "freedom" {
  green
} else if kind == "birth" {
  coral
} else if kind == "ecosystem" {
  gold
} else {
  green-dark
}

#let event(item, side: "left") = {
  let accent = accent-for(item.kind)
  if side == "left" {
    grid(
      columns: (1fr, 12.7mm, 1fr),
      gutter: 4.2mm,
      card(item.year, item.title, item.body, accent: accent, side: side), dot(accent: accent), empty-card,
    )
  } else {
    grid(
      columns: (1fr, 12.7mm, 1fr),
      gutter: 4.2mm,
      empty-card, dot(accent: accent), card(item.year, item.title, item.body, accent: accent, side: side),
    )
  }
}

// Header
#grid(
  columns: (1fr, 53.7mm, auto),
  gutter: 5.7mm,
  align: (left + horizon, center + horizon, right + horizon),
  [
    #pill([LINUX HISTORY], fill: green-dark)
    #v(3.5mm)
    #text(size: 38.9pt, weight: "black", fill: green-dark)[
      Linux、35年の旅。
    ]
    #v(1.4mm)
    #text(size: 17pt, fill: muted)[
      ひとりの学生の趣味から、世界を支えるOSカーネルへ
    ]
  ],
  [
    #image("tux.png", height: 41mm)
  ],
  [
    #box(
      width: 43.8mm,
      height: 43.8mm,
      radius: 8.5mm,
      fill: green-dark,
    )[
      #align(center + horizon)[
        #text(size: 12.7pt, fill: lime, weight: "bold")[SINCE]
        #linebreak()
        #text(size: 24pt, fill: white, weight: "black")[1991]
      ]
    ]
  ],
)

#v(8.5mm)

// The fixed-height region and fractional gaps keep the timeline vertically
// balanced even when entries are added or removed from the data file.
#block(width: 100%, height: timeline-height)[
  #place(center, dx: 0mm, dy: 5.7mm)[
    #line(length: 427.8mm, angle: 90deg, stroke: 1.8pt + rgb("#aab5ae"))
  ]

  #for (index, item) in timeline-events.enumerate() {
    let side = if calc.rem(index, 2) == 0 { "left" } else { "right" }
    event(item, side: side)

    if index < timeline-events.len() - 1 {
      v(1fr)
    }
  }
]

#v(2.1mm)

#block(
  width: 100%,
  inset: (x: 4.2mm, y: 2.8mm),
  radius: 2.1mm,
  fill: rgb("#e4edd9"),
)[
  #grid(
    columns: (auto, 1fr),
    gutter: 3.5mm,
    align: horizon,
    text(size: 10.6pt, weight: "bold", fill: green-dark)[参考資料 / REFERENCES],
    text(size: 6.7pt, fill: muted)[PDFでは各URLをクリックできます　・　Tux: Larry Ewing / GIMP　・　参照日 2026-09-11],
  )
  #v(1.8mm)
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 4.2mm,
    row-gutter: 1.4mm,
    ..references.enumerate().map(((index, reference)) => link(reference.url)[
      #text(size: 8.1pt, weight: "bold", fill: green-dark)[#(index + 1). #reference.label]
      #h(1.1mm)
      #text(size: 7.1pt, fill: muted)[#reference.display]
    ]),
  )
]

#let timeline-events = (
  (
    year: [1969],
    title: [UNIX 誕生],
    body: [Bell LabsでUNIXが誕生。小さな道具を組み合わせる思想や設計が、のちのLinux文化へつながる。],
    kind: "roots",
  ),
  (
    year: [1983],
    title: [GNU Project],
    body: [Richard Stallmanが、自由に使い・学び・改変・共有できるUNIX互換systemの開発を宣言。],
    kind: "freedom",
  ),
  (
    year: [1991],
    title: [Linux、始まる],
    body: [Helsinki大学の学生Linus Torvaldsが386 PC向けkernelを発表。公開版0.01は10,239行だった。],
    kind: "birth",
  ),
  (
    year: [1992],
    title: [GPL と画面表示],
    body: [0.12がGNU GPLを採用。0.95ではX Window Systemが動き、自由な共同開発とGUIへの道が開く。],
    kind: "freedom",
  ),
  (
    year: [1993],
    title: [distributionの時代],
    body: [SlackwareとDebianが登場。kernelと多数のsoftwareを、導入・管理できるまとまりとして届ける。],
    kind: "ecosystem",
  ),
  (
    year: [1994],
    title: [Linux 1.0],
    body: [3月14日に正式版1.0を公開。176,250行のcodeと386向けの実用的なkernelへ成長した。],
    kind: "birth",
  ),
  (
    year: [1995],
    title: [PCの外へ],
    body: [1.2でAlpha、SPARC、MIPSへ対応。x86 PCから異なるprocessor architectureへ活動範囲を広げる。],
    kind: "freedom",
  ),
  (
    year: [1996],
    title: [Tux と Linux 2.0],
    body: [複数CPUに対応した2.0を公開。Larry Ewingが描いたpenguin「Tux」もLinuxの顔になる。],
    kind: "roots",
  ),
  (
    year: [2003],
    title: [Linux 2.6],
    body: [大規模systemへの対応を改善。ALSA、kernel preemption、SELinuxなどを取り込む。],
    kind: "roots",
  ),
  (
    year: [2005],
    title: [Git が生まれる],
    body: [巨大なkernel開発を支えるため、Linusらが分散型version管理system「Git」を開発。],
    kind: "birth",
  ),
  (
    year: [2008],
    title: [手のひらのLinux],
    body: [Linux kernelを土台にしたAndroid 1.0搭載端末が登場。smartphoneを通じて日常へ広がる。],
    kind: "freedom",
  ),
  (
    year: [2011],
    title: [Linux 3.0・20周年],
    body: [大きな互換性変更ではなく、新しい番号で次の10年へ。開発には毎release千人規模が参加する。],
    kind: "ecosystem",
  ),
  (
    year: [2013],
    title: [SteamOS 発表],
    body: [ValveがDebianベースのgaming OSを発表。Linux desktopで商用gameを遊ぶ流れが加速する。],
    kind: "birth",
  ),
  (
    year: [2022],
    title: [Linux 6.x と Rust],
    body: [6.0を公開。続く6.1では、memory安全性を重視するRust言語の初期supportを取り込む。],
    kind: "ecosystem",
  ),
  (
    year: [2026.09],
    title: [そして、いま],
    body: [最新stableは *7.2.4*。世界中の開発者がpatchを送り、35年前に始まった開発は続いている。],
    kind: "today",
  ),
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

#let timeline-height = 670mm
#let card-height = 38mm

#set page(
  paper: "a1",
  margin: (x: 25mm, y: 20mm),
  fill: paper,
)

#set text(
  font: "Noto Sans CJK JP",
  size: 19pt,
  fill: ink,
)

#set par(leading: 0.62em)

#let pill(body, fill: green, text-fill: white) = box(
  inset: (x: 4.5mm, y: 1.4mm),
  radius: 99pt,
  fill: fill,
  text(fill: text-fill, weight: "bold", size: 12pt, body),
)

#let card(year, title, body, accent: green, side: "left") = block(
  width: 100%,
  height: card-height,
  inset: (x: 8mm, y: 4.5mm),
  radius: 3mm,
  fill: white,
  stroke: (
    left: if side == "right" { 1pt + rgb("#d8ddd7") } else { 4pt + accent },
    right: if side == "right" { 4pt + accent } else { 1pt + rgb("#d8ddd7") },
    top: 1pt + rgb("#d8ddd7"),
    bottom: 1pt + rgb("#d8ddd7"),
  ),
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 3mm,
      align: (left + top, left + top),
      pill(year, fill: accent), text(size: 22pt, weight: "bold", title),
    )
    #v(2mm)
    #text(size: 15pt, fill: rgb("#35413c"), body)
  ],
)

#let empty-card = block(width: 100%, height: card-height)

#let dot(accent: green) = block(width: 100%, height: card-height)[
  #align(center + horizon)[
    #circle(radius: 4.2mm, fill: paper, stroke: 2.5pt + accent)[
      #align(center + horizon)[#circle(radius: 1.7mm, fill: accent)]
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
      columns: (1fr, 18mm, 1fr),
      gutter: 6mm,
      card(item.year, item.title, item.body, accent: accent, side: side), dot(accent: accent), empty-card,
    )
  } else {
    grid(
      columns: (1fr, 18mm, 1fr),
      gutter: 6mm,
      empty-card, dot(accent: accent), card(item.year, item.title, item.body, accent: accent, side: side),
    )
  }
}

// Header
#grid(
  columns: (1fr, 76mm, auto),
  gutter: 8mm,
  align: (left + horizon, center + horizon, right + horizon),
  [
    #pill([LINUX HISTORY], fill: green-dark)
    #v(5mm)
    #text(size: 55pt, weight: "black", fill: green-dark)[
      Linux、35年の旅。
    ]
    #v(2mm)
    #text(size: 24pt, fill: muted)[
      ひとりの学生の hobby から、世界を支える kernel へ
    ]
  ],
  [
    #image("tux.png", height: 58mm)
  ],
  [
    #box(
      width: 62mm,
      height: 62mm,
      radius: 12mm,
      fill: green-dark,
    )[
      #align(center + horizon)[
        #text(size: 18pt, fill: lime, weight: "bold")[SINCE]
        #linebreak()
        #text(size: 34pt, fill: white, weight: "black")[1991]
      ]
    ]
  ],
)

#v(12mm)

// The fixed-height region and fractional gaps keep the timeline vertically
// balanced even when entries are added or removed from the data file.
#block(width: 100%, height: timeline-height)[
  #place(center, dx: 0mm, dy: 8mm)[
    #line(length: 645mm, angle: 90deg, stroke: 2.5pt + rgb("#aab5ae"))
  ]

  #for (index, item) in timeline-events.enumerate() {
    let side = if calc.rem(index, 2) == 0 { "left" } else { "right" }
    event(item, side: side)

    if index < timeline-events.len() - 1 {
      v(1fr)
    }
  }
]

#v(3mm)

#text(size: 10pt, fill: muted)[
  Sources: kernel.org (About Linux / 20 years of Linux / releases.json), GNU Project (Initial Announcement),
  Debian Project History, Git documentation (A Short History of Git), Android Open Source Project,
  Steam News (SteamOS Announcement). Tux artwork: Larry Ewing / GIMP. 参照: 2026-09-10
]

#set page(
  paper: "a1",
  margin: 24mm,
)

#set text(
  font: "Noto Sans CJK JP",
  size: 23pt,
)

#set par(
  leading: 0.7em,
)

#let gap = 14mm

#let card(title, body) = block(
  width: 100%,
  inset: 12mm,
  radius: 5mm,
  stroke: 1.5pt + luma(190),
  [
    #text(
      size: 32pt,
      weight: "bold",
      title,
    )

    #v(6mm)

    #body
  ],
)

// Header
#align(center)[
  #text(
    size: 68pt,
    weight: "bold",
  )[
    Linuxとは？
  ]

  #v(5mm)

  #text(size: 28pt)[
    自由なOS
  ]
]

#v(18mm)

// Main introduction
#card(
  [そもそも Linux って？],
  [
    OSの1つ。Windows, macOSなどと並ぶ*Operating System*。

    中身(ソースコードなど)がOSSとして公開されていて誰でも自由にカスタマイズなどが行える。
  ],
)

#let layer-box(body, fill: luma(245)) = block(
  width: 100%,
  inset: 6mm,
  radius: 3mm,
  fill: fill,
  stroke: 1.2pt + luma(180),
  align(center, body),
)

#layer-box(
  fill: rgb("#e8eef8"),
)[
  #text(weight: "bold", size: 26pt)[Application]
]

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 5mm,

  layer-box(fill: rgb("#b9d9ff"))[
    #text(weight: "bold")[Windows]
  ],

  layer-box(fill: rgb("#f5e6a8"))[
    #text(weight: "bold")[macOS]
  ],

  layer-box(fill: rgb("#c8edc5"))[
    #text(weight: "bold")[Linux]
  ],
)

#layer-box(
  fill: rgb("#eeeeee"),
)[
  #text(weight: "bold", size: 26pt)[Hardware]
]

#v(gap)

// Two-column area
#grid(
  columns: (1fr, 1fr),
  gutter: 14mm,

  [
    #card(
      [どこで使われている？],
      [
        - Web server
        - Supercomputer
        - Android
        - Embedded device
        - Developer PC

        実は、普段見えないところにも
        Linux はたくさん存在しています。
      ],
    )
  ],

  [
    #card(
      [Linux の特徴],
      [
        - open-source
        - 無料で使える
        - 自由に customize できる
        - 多数の distribution がある
        - 強力なShell
      ],
    )
  ],
)

#v(gap)

#grid(
  columns: (1fr, 1fr),
  gutter: 14mm,

  [
    #card(
      [Windows / macOS と何が違う？],
      [
        Linux は単一の製品ではありません。

        Ubuntu、Fedora、Arch Linux、
        NixOS など、多数の distribution が存在します。

        desktop environment や shell まで
        自由に選択できます。
      ],
    )
  ],

  [
    #card(
      [こんな画面にもできる],
      [
        #rect(
          width: 100%,
          height: 130mm,
          radius: 3mm,
          fill: luma(235),
        )[
          #align(center + horizon)[
            #image("./TOP.png")
          ]
        ]
      ],
    )
  ],
)

#v(gap)

#card(
  [Linux を触ってみよう！],
  [
    この展示では実際に Linux を操作できます。

    Terminal を開いたり、
    application を動かしたり、
    desktop を触ってみてください。

    #v(8mm)

    #align(center)[
      #text(size: 30pt, weight: "bold")[
        Try Linux!
      ]
    ]
  ],
)

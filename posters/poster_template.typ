#let base = white
#let surface = white
#let text-color = rgb("#202020")
#let muted = rgb("#555555")
#let pine = rgb("#205D7A")
#let border = rgb("#BBBBBB")

#let setup(title) = {
  align(center)[
    #text(size: 16pt, weight: "bold", fill: pine)[Linux サークル｜学園祭展示]
    #v(7mm)
    #text(size: 54pt, weight: "bold")[#title]
  ]
  v(10mm)
  line(length: 100%, stroke: 2.5pt + pine)
  v(12mm)
}

#let section(title, body) = block(
  width: 100%,
  inset: 11mm,
  fill: surface,
  stroke: 1.2pt + border,
  [
    #text(size: 29pt, weight: "bold", fill: pine)[#title]
    #v(6mm)
    #body
  ],
)

#let small-section(title, body) = block(
  width: 100%,
  inset: 9mm,
  stroke: 1.2pt + border,
  [
    #text(size: 24pt, weight: "bold", fill: pine)[#title]
    #v(4mm)
    #body
  ],
)

#let lead(body) = align(center)[
  #text(size: 30pt, weight: "medium", body)
]

#let footer(body) = {
  v(1fr)
  line(length: 100%, stroke: 1.5pt + pine)
  v(6mm)
  align(center)[#text(size: 20pt, weight: "bold", fill: pine)[#body]]
}

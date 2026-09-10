#import "poster_template.typ": *

#set page(paper: "a1", margin: 24mm, fill: base)
#set text(font: "Noto Sans JP", size: 22pt, fill: text-color, lang: "ja")
#set par(leading: 0.72em)
#set heading(numbering: none)

#setup[Linuxって、何だろう？]

#lead[身近なサービスから自分のパソコンまで動かしている、自由なコンピューターの基盤。]

#v(14mm)

#section(
  [OSの役割],
  [
    #grid(
      columns: (1fr, auto, 1fr, auto, 1fr),
      gutter: 5mm,
      align: center + horizon,
      block(width: 100%, inset: 8mm, stroke: 1.5pt + pine)[#align(center)[アプリケーション]],
      text(size: 30pt, fill: pine)[↔],
      block(width: 100%, inset: 8mm, fill: rgb("#F2F2F2"), stroke: 1.5pt + pine)[#align(center)[#text(weight: "bold")[OS]]],
      text(size: 30pt, fill: pine)[↔],
      block(width: 100%, inset: 8mm, stroke: 1.5pt + pine)[#align(center)[ハードウェア]],
    )

    #v(7mm)
    OSは、アプリケーションがCPU・メモリー・ディスクなどを利用できるようにし、私たちがコンピューターを操作するための土台になります。

    #v(4mm)
    WindowsやmacOSと同じように、Linuxを基盤にしたOSもデスクトップPCで利用できます。
  ],
)

#v(12mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 12mm,
  section(
    [どこで使われている？],
    [
      ・Webサイトやクラウドを支えるサーバー

      ・科学技術計算を行うスーパーコンピューター

      ・Android端末やネットワーク機器

      ・家電、自動車、組み込み機器

      ・開発者や一般利用者のデスクトップPC

      #v(5mm)
      #text(weight: "bold")[目に見えない場所でも、Linuxは私たちの生活を支えています。]
    ],
  ),
  section(
    [何が特徴なの？],
    [
      ・ソースコードが公開されている

      ・目的に合わせて調査・変更できる

      ・多数の人や組織が開発に参加している

      ・用途の異なる多くの種類がある

      ・デスクトップや操作方法を選べる

      #v(5mm)
      #text(weight: "bold")[完成した一つの製品というより、選び、組み合わせられる環境です。]
    ],
  ),
)

#v(12mm)

#section(
  [ディストリビューション],
  [
    Linuxカーネルに、基本的なソフトウェア、管理ツール、デスクトップ環境などを組み合わせ、利用できる形にまとめたものを「Linuxディストリビューション」と呼びます。

    #v(7mm)
    #grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      gutter: 7mm,
      small-section([Ubuntu], [導入しやすく、利用者も多い]),
      small-section([Fedora], [新しい技術を積極的に採用]),
      small-section([Arch Linux], [必要なものを自分で組み立てる]),
      small-section([NixOS], [設定を宣言的に管理できる]),
    )
  ],
)

#footer[次は「Linuxのデスクトップ」を見てみよう →]

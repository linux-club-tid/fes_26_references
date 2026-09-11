#import "poster_template.typ": *

#set page(paper: "a1", margin: 24.04mm, fill: base)
#set text(font: "Noto Sans JP", size: 15.6pt, fill: text-color, lang: "ja")
#set par(leading: 0.72em)
#set heading(numbering: none)

#let setup(title) = {
  align(center)[
    #text(size: 16pt, weight: "bold", fill: pine)[Linux サークル｜学園祭展示]
    #v(5mm)
    #text(size: 52pt, weight: "bold")[#title]
  ]
  v(7.5mm)
  line(length: 100%, stroke: 2.5pt + pine)
  v(8.5mm)
}

#let section(title, body) = block(
  width: 100%,
  inset: (x: 10mm, y: 7.5mm),
  fill: surface,
  stroke: 1.2pt + border,
  [
    #text(size: 27pt, weight: "bold", fill: pine)[#title]
    #v(4.5mm)
    #body
  ],
)

#let small-section(title, body) = block(
  width: 100%,
  inset: (x: 7.5mm, y: 6.5mm),
  stroke: 1.2pt + border,
  [
    #text(size: 22pt, weight: "bold", fill: pine)[#title]
    #v(3mm)
    #body
  ],
)

#scale(x: 141.421%, y: 141.421%, reflow: true)[
#setup[Linuxって、何だろう？]

#lead[身近なWebサービスから手元のパソコンまでを支える、自由なコンピューターの基盤。]

#v(5mm)

#section(
  [OSの役割],
  [
    #grid(
      columns: (1fr, auto, 1fr, auto, 1fr),
      gutter: 3.5mm,
      align: center + horizon,
      block(width: 100%, inset: 4.8mm, stroke: 1.1pt + pine)[#align(center)[アプリケーション]],
      text(size: 21.2pt, fill: pine)[↔],
      block(width: 100%, inset: 4.8mm, fill: rgb("#F2F2F2"), stroke: 1.1pt + pine)[#align(center)[#text(weight: "bold")[OS]]],
      text(size: 21.2pt, fill: pine)[↔],
      block(width: 100%, inset: 4.8mm, stroke: 1.1pt + pine)[#align(center)[ハードウェア]],
    )

    #v(3.5mm)
    OS（基本ソフトウェア）は、アプリがCPUやメモリ、ストレージなどを適切に使えるよう仲介し、私たちがコンピューターを快適に操作するための土台となります。

    #v(2mm)
    WindowsやmacOSと同じように、LinuxをベースにしたOSも普段使いのパソコンでそのまま利用できます。
  ],
)

#v(4.5mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 5.5mm,
  section(
    [どこで使われている？],
    [
      ・Webサイトやクラウドサービスを支えるサーバー\
      #v(1.6mm)
      ・科学技術計算を担うスーパーコンピューター\
      #v(1.6mm)
      ・身近なAndroidスマートフォンやネットワーク機器\
      #v(1.6mm)
      ・スマート家電や自動車などの各種組み込み機器\
      #v(1.6mm)
      ・エンジニアや一般ユーザーが使う普段のパソコン

      #v(2.5mm)
      #text(weight: "bold")[目に見えない裏側から身の回りの機器まで、Linuxは日々の生活を支えています。]
    ],
  ),
  section(
    [何が特徴なの？],
    [
      ・設計図（ソースコード）が無償で一般公開されている\
      #v(1.6mm)
      ・用途に合わせて中身を自由に調べ、改良やカスタマイズができる\
      #v(1.6mm)
      ・世界中の開発者や企業が協力して進化させ続けている\
      #v(1.6mm)
      ・用途や好みに合わせた多様なバリエーションが存在する\
      #v(1.6mm)
      ・画面のデザインや操作スタイルを自分好みに選べる

      #v(2.5mm)
      #text(weight: "bold")[誰かに決められたひとつの完成品ではなく、目的に応じて自由に選べる環境です。]
    ],
  ),
)

#v(4.5mm)

#section(
  [ディストリビューション],
  [
    Linuxの心臓部である「カーネル」に、基本ソフトウェアや管理ツール、デスクトップ環境などを組み合わせ、すぐに使える形にパッケージ化したものを「Linuxディストリビューション」と呼びます。

    #v(3.5mm)
    #grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      gutter: 4mm,
      small-section([Ubuntu], [初心者でも扱いやすく、世界中で最も広く普及している]),
      small-section([Fedora], [最新の技術やソフトウェアをいち早く積極的に採用]),
      small-section([Arch Linux], [最小限の構成から、必要なものだけを自分で組み立てる]),
      small-section([NixOS], [システム全体の設定をコードとして宣言的に一括管理できる]),
    )
  ],
)

#v(4.5mm)

#block(
  width: 100%,
  inset: (x: 10mm, y: 6.5mm),
  fill: rgb("#EEF5F8"),
  stroke: 1.2pt + pine,
  [
    #grid(
      columns: (auto, 1fr),
      gutter: 6mm,
      align: (left + horizon, left + horizon),
      text(size: 22pt, weight: "bold", fill: pine)[実はあなたの\ 手元にも？],
      [
        世界で最も広く普及しているモバイルOS「Android」。そのハードウェアを制御する根幹（心臓部）には、実はLinuxが採用されています。

        #v(1.8mm)
        見た目や操作感はスマートフォン向けに最適化されていますが、土台を支える仕組みは同じLinuxです。遠くのサーバーやスパコンだけでなく、手元のスマートフォンでもLinuxは活躍しています。
      ],
    )
  ],
)

#footer[次は「Linuxのデスクトップ」を見てみよう →]
]

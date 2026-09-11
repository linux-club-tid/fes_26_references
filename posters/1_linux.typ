#import "poster_template.typ": *

#set page(paper: "a2", margin: 17mm, fill: base)
#set text(font: "Noto Sans JP", size: 15.6pt, fill: text-color, lang: "ja")
#set par(leading: 0.72em)
#set heading(numbering: none)

#setup[Linuxって、何だろう？]

#lead[身近なWebサービスから手元のパソコンまでを支える、自由なコンピューターの基盤。]

#v(9.9mm)

#section(
  [OSの役割],
  [
    #grid(
      columns: (1fr, auto, 1fr, auto, 1fr),
      gutter: 3.5mm,
      align: center + horizon,
      block(width: 100%, inset: 5.7mm, stroke: 1.1pt + pine)[#align(center)[アプリケーション]],
      text(size: 21.2pt, fill: pine)[↔],
      block(width: 100%, inset: 5.7mm, fill: rgb("#F2F2F2"), stroke: 1.1pt + pine)[#align(center)[#text(weight: "bold")[OS]]],
      text(size: 21.2pt, fill: pine)[↔],
      block(width: 100%, inset: 5.7mm, stroke: 1.1pt + pine)[#align(center)[ハードウェア]],
    )

    #v(5mm)
    OS（基本ソフトウェア）は、アプリケーションがCPU・メモリ・ストレージなどを利用できるように仲介し、私たちがコンピューターを操作するための土台となります。

    #v(2.8mm)
    WindowsやmacOSと同じように、LinuxをベースにしたOSも普段使いのデスクトップPCで利用できます。
  ],
)

#v(8.5mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 8.5mm,
  section(
    [どこで使われている？],
    [
      ・Webサイトやクラウドサービスを支えるサーバー

      ・科学技術計算を担うスーパーコンピューター

      ・身近なAndroidスマートフォンやネットワーク機器

      ・スマート家電、自動車、各種組み込み機器

      ・開発者や一般ユーザーが使う普段のパソコン

      #v(3.5mm)
      #text(weight: "bold")[目に見えない場所から身の回りまで、Linuxは日々の生活を支えています。]
    ],
  ),
  section(
    [何が特徴なの？],
    [
      ・設計図（ソースコード）が一般に無償公開されている

      ・用途に合わせて中身を自由に調べ、改良や変更ができる

      ・世界中の開発者や企業が協力して開発を進めている

      ・用途や好みに合わせた多様なバリエーションが存在する

      ・画面デザインや操作体系を自分好みに選べる

      #v(3.5mm)
      #text(weight: "bold")[単一の完成品というより、目的に応じて選び、組み合わせられる環境です。]
    ],
  ),
)

#v(8.5mm)

#section(
  [ディストリビューション],
  [
    Linuxの心臓部である「カーネル」に、基本ソフトウェアや管理ツール、デスクトップ環境などを組み合わせ、すぐに使える形にパッケージ化したものを「Linuxディストリビューション」と呼びます。

    #v(5mm)
    #grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      gutter: 5mm,
      small-section([Ubuntu], [導入が簡単で、世界中で最も広く普及している]),
      small-section([Fedora], [最新の技術やソフトウェアをいち早く積極的に採用]),
      small-section([Arch Linux], [最小限の構成から、必要なものだけを自分で組み立てる]),
      small-section([NixOS], [システム全体の設定をコードとして宣言的に一括管理できる]),
    )
  ],
)

#footer[次は「Linuxのデスクトップ」を見てみよう →]

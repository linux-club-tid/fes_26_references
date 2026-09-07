#import "poster_template.typ": *

#set page(paper: "a1", margin: 24mm, fill: base)
#set text(font: "Noto Sans JP", size: 22pt, fill: text-color, lang: "ja")
#set par(leading: 0.72em)
#set heading(numbering: none)

#setup[デスクトップは選べる]

#lead[Linuxでは、見た目だけでなく、コンピューターとの付き合い方まで選べます。]

#v(14mm)

#section(
  [デスクトップ環境とは？],
  [
    ウィンドウの表示、アプリケーションの起動、ファイル操作、通知、システム設定など、普段目にする操作環境をまとめたものです。

    #v(8mm)
    #grid(
      columns: (1fr, auto, 1fr, auto, 1fr),
      gutter: 5mm,
      align: center + horizon,
      block(width: 100%, inset: 8mm, stroke: 1.5pt + pine)[#align(center)[利用者]],
      text(size: 30pt, fill: pine)[→],
      block(width: 100%, inset: 8mm, fill: rgb("#F2F2F2"), stroke: 1.5pt + pine)[#align(center)[#text(
        weight: "bold",
      )[デスクトップ環境]]],
      text(size: 30pt, fill: pine)[→],
      block(width: 100%, inset: 8mm, stroke: 1.5pt + pine)[#align(center)[システムとハードウェア]],
    )
  ],
)

#v(12mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 12mm,
  section(
    [代表的なデスクトップ環境],
    [
      #text(size: 25pt, weight: "bold")[KDE Plasma]
      高いカスタマイズ性。親しみやすい構成にも、個性的な構成にもできます。

      #v(7mm)
      #text(size: 25pt, weight: "bold")[GNOME]
      シンプルで一貫した操作体系。作業への集中を重視しています。

      #v(7mm)
      #text(size: 25pt, weight: "bold")[Xfce]
      軽量で伝統的な構成。比較的少ない資源でも動作します。
    ],
  ),
  section(
    [KDE Plasmaで変えられるもの],
    [
      ・パネルの位置、大きさ、内容

      ・アプリケーションメニュー

      ・色、テーマ、アイコン、フォント

      ・ウィンドウの枠や配置

      ・仮想デスクトップ

      ・アニメーションや画面効果

      ・キーボードショートカット

      ・作業に必要なウィジェット

      #v(6mm)
      #text(weight: "bold")[設定画面から変更できるので、プログラミングの知識は必要ありません。]
    ],
  ),
)

#v(12mm)

#section(
  [選択できるということ],
  [
    WindowsやmacOSでも壁紙や色などは変更できますが、Linuxではデスクトップ環境そのものを大きく取り替えることができます。

    #v(5mm)
    見た目を整えるだけでなく、ウィンドウの並べ方、アプリケーションの開き方、キーボード中心かマウス中心かといった操作方法まで、自分の目的に合わせて選択できます。
  ],
)

#footer[会場ではKDE Plasmaを自由にカスタマイズできます]

#import "poster_template.typ": *

#set page(paper: "a2", margin: 13mm, fill: base)
#set text(font: "Noto Sans JP", size: 14.2pt, fill: text-color, lang: "ja")
#set par(leading: 0.66em)
#set heading(numbering: none)

#let section(title, body) = block(
  width: 100%,
  inset: 7.5mm,
  fill: surface,
  stroke: 1.2pt + border,
  [
    #text(size: 25pt, weight: "bold", fill: pine)[#title]
    #v(3.5mm)
    #body
  ],
)

#let footer(body) = place(bottom + center)[
  #block(width: 100%)[
    #line(length: 100%, stroke: 1.5pt + pine)
    #v(5mm)
    #align(center)[#text(size: 18pt, weight: "bold", fill: pine)[#body]]
  ]
]

#setup[デスクトップは選べる]

#lead[Linuxなら、画面の見た目だけでなく、コンピューターの使い方や操作感まで自由に選べます。]

#v(7mm)

#section(
  [#text(size: 0.92em)[デスクトップ環境とは？]],
  [
    WindowsやmacOSで普段目にしている画面も、コンピューターの中核とは別の層です。Linuxでは、人とシステムをつなぐこの層を「デスクトップ環境」として選べます。

    #v(4.5mm)
    #grid(
      columns: (25mm, 1fr, 1fr, 1fr),
      gutter: 2.5mm,
      align: (right + horizon, center + horizon, center + horizon, center + horizon),
      [],
      text(weight: "bold", size: 16.2pt)[Windows],
      text(weight: "bold", size: 16.2pt)[macOS],
      text(weight: "bold", size: 16.2pt, fill: pine)[Linux],

      text(size: 11.5pt, weight: "bold", fill: muted)[画面と操作],
      block(width: 100%, height: 25mm, inset: 3.2mm, fill: rgb("#F2F2F2"), stroke: 0.8pt + muted)[
        #align(center + horizon)[#text(size: 11.5pt)[デスクトップ・スタート\
        タスクバー・エクスプローラー]]
      ],
      block(width: 100%, height: 25mm, inset: 3.2mm, fill: rgb("#F2F2F2"), stroke: 0.8pt + muted)[
        #align(center + horizon)[#text(size: 11.5pt)[Finder・Dock\
        メニューバー]]
      ],
      block(width: 100%, height: 25mm, inset: 3.2mm, fill: rgb("#F2F2F2"), stroke: 1.2pt + pine)[
        #align(center + horizon)[
          #text(size: 10pt, fill: pine, weight: "bold")[選べる]
          #linebreak()
          #text(size: 12.5pt, weight: "bold")[KDE Plasma / GNOME / Xfce]
          #linebreak()
          #text(size: 9.5pt, fill: muted)[デスクトップ環境]
        ]
      ],

      text(size: 11.5pt, weight: "bold", fill: muted)[OSの中核],
      block(width: 100%, inset: 3mm, stroke: 0.8pt + muted)[#align(center)[Windows NT]],
      block(width: 100%, inset: 3mm, stroke: 0.8pt + muted)[#align(center)[XNU]],
      block(width: 100%, inset: 3mm, stroke: 0.8pt + muted)[#align(center)[Linuxカーネル]],

      text(size: 11.5pt, weight: "bold", fill: muted)[物理部分],
      block(width: 100%, inset: 2.5mm, stroke: 0.8pt + muted)[#align(center)[ハードウェア]],
      block(width: 100%, inset: 2.5mm, stroke: 0.8pt + muted)[#align(center)[ハードウェア]],
      block(width: 100%, inset: 2.5mm, stroke: 0.8pt + muted)[#align(center)[ハードウェア]],
    )

    #v(2.5mm)
    #text(size: 9.5pt, fill: muted)[※ 各OSの構造は完全には同じではありません。役割がおおよそ対応する部分を単純化した図です。]
  ],
)

#v(6mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 8.5mm,
  section(
    [代表的なデスクトップ環境],
    [
      #text(size: 17.7pt, weight: "bold")[KDE Plasma]
      圧倒的なカスタマイズ性が魅力。親しみやすい操作感から個性的なレイアウトまで自由自在に調整できます。

      #v(5mm)
      #text(size: 17.7pt, weight: "bold")[GNOME]
      シンプルで統一感のある操作体系。無駄を省いたモダンな設計で、作業への集中を高めます。

      #v(5mm)
      #text(size: 17.7pt, weight: "bold")[Xfce]
      軽快で扱いやすい伝統的な構成。動作が非常に軽く、限られたスペックのPCでも軽快に動作します。
    ],
  ),
  section(
    [KDE Plasmaで変えられるもの],
    [
      ・タスクバー（パネル）の位置・サイズ・表示項目

      ・アプリケーションメニューの配置やデザイン

      ・色、テーマ、アイコン、フォント

      ・ウィンドウの枠やタイルの配置

      ・作業領域を広げる仮想デスクトップ

      ・アニメーションや画面効果

      ・キーボードショートカット

      ・時計や付箋などのデスクトップウィジェット

      #v(4.2mm)
      #text(weight: "bold")[すべて設定画面からマウス操作で変更できるため、専門的な知識は必要ありません。]
    ],
  ),
)

#v(6mm)

#section(
  [選択できるということ],
  [
    WindowsやmacOSでも壁紙や色の変更はできますが、Linuxではデスクトップ環境そのものを丸ごと選び直すことができます。

    #v(3.5mm)
    見た目を好みに整えるだけでなく、「ウィンドウの並べ方」「アプリの起動方法」「マウス中心かキーボード中心か」といった操作スタイルそのものを、自分の目的に合わせて自由に選べるのがLinuxの大きな魅力です。
  ],
)

#v(2mm)

#section(
  [もっと自由に：niri / Hyprland],
  [
    #grid(
      columns: (52mm, 1fr),
      gutter: 4mm,
      align: (left + top, left + top),
      [
        #image("images/niri_desktop.png", width: 100%)
        #v(1mm)
        #text(size: 8pt, fill: muted)[niriで構成したデスクトップの例]
      ],
      [
        #text(size: 14.5pt, weight: "bold")[niri]
        ウィンドウを横方向へ並べ、画面をスクロールして移動する独自のタイル配置。作業領域を途切れず広げられます。

        #v(2mm)
        #text(size: 14.5pt, weight: "bold")[Hyprland]
        ウィンドウを自動で敷き詰める動的タイリングと、滑らかなアニメーションや豊富な視覚効果が特徴です。

        #v(2mm)
        #text(weight: "bold")[設定ファイルを編集し、バーやランチャーなどの部品も自分で選ぶことで、操作方法から見た目まで深く作り込めます。]
      ],
    )
  ],
)

#footer[会場ではKDE Plasmaを自由にカスタマイズできます]

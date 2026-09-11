#import "poster_template.typ": *

#set page(paper: "a2", margin: 17mm, fill: base)
#set text(font: "Noto Sans JP", size: 15.6pt, fill: text-color, lang: "ja")
#set par(leading: 0.72em)
#set heading(numbering: none)

#setup[デスクトップは選べる]

#lead[Linuxなら、画面の見た目だけでなく、コンピューターの使い方や操作感まで自由に選べます。]

#v(9.9mm)

#section(
  [デスクトップ環境とは？],
  [
    ウィンドウの表示やアプリの起動、ファイル管理、通知、各種設定など、私たちが画面上で目にする操作インターフェース全般をまとめた仕組みです。

    #v(5.7mm)
    #grid(
      columns: (1fr, auto, 1fr, auto, 1fr),
      gutter: 3.5mm,
      align: center + horizon,
      block(width: 100%, inset: 5.7mm, stroke: 1.1pt + pine)[#align(center)[利用者]],
      text(size: 21.2pt, fill: pine)[→],
      block(width: 100%, inset: 5.7mm, fill: rgb("#F2F2F2"), stroke: 1.1pt + pine)[#align(center)[#text(
        weight: "bold",
      )[デスクトップ環境]]],
      text(size: 21.2pt, fill: pine)[→],
      block(width: 100%, inset: 5.7mm, stroke: 1.1pt + pine)[#align(center)[システムとハードウェア]],
    )
  ],
)

#v(8.5mm)

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

#v(8.5mm)

#section(
  [選択できるということ],
  [
    WindowsやmacOSでも壁紙や色の変更はできますが、Linuxではデスクトップ環境そのものを丸ごと選び直すことができます。

    #v(3.5mm)
    見た目を好みに整えるだけでなく、「ウィンドウの並べ方」「アプリの起動方法」「マウス中心かキーボード中心か」といった操作スタイルそのものを、自分の目的に合わせて自由に選べるのがLinuxの大きな魅力です。
  ],
)

#v(8.5mm)

#section(
  [もっと自由に：niri / Hyprland],
  [
    #grid(
      columns: (110mm, 1fr),
      gutter: 7mm,
      align: (left + top, left + top),
      [
        #image("images/niri_desktop.png", width: 100%)
        #v(1.5mm)
        #text(size: 9.5pt, fill: muted)[niriで構成したデスクトップの例]
      ],
      [
        #text(size: 17.7pt, weight: "bold")[niri]
        ウィンドウを横方向へ並べ、画面をスクロールして移動する独自のタイル配置。作業領域を途切れず広げられます。

        #v(4mm)
        #text(size: 17.7pt, weight: "bold")[Hyprland]
        ウィンドウを自動で敷き詰める動的タイリングと、滑らかなアニメーションや豊富な視覚効果が特徴です。

        #v(4mm)
        #text(weight: "bold")[設定ファイルを編集し、バーやランチャーなどの部品も自分で選ぶことで、操作方法から見た目まで深く作り込めます。]
      ],
    )
  ],
)

#footer[会場ではKDE Plasmaを自由にカスタマイズできます]

#let paper = rgb("#FAF4ED")
#let surface = rgb("#FFFCF7")
#let ink = rgb("#403D52")
#let muted = rgb("#6E6A86")
#let accent = rgb("#286983")
#let accent-soft = rgb("#DCE9E6")
#let gold = rgb("#B4631B")
#let gold-soft = rgb("#F4E9D8")
#let danger = rgb("#B23A48")
#let danger-soft = rgb("#F7E2E5")
#let rule = rgb("#D8D2CA")

#set page(
  paper: "a4",
  margin: (x: 16mm, top: 14mm, bottom: 17mm),
  fill: paper,
  footer: context [
    #line(length: 100%, stroke: 0.45pt + rule)
    #v(2.5pt)
    #grid(
      columns: (1fr, auto),
      text(size: 7.5pt, fill: muted, [Linuxサークル — shell体験 スタッフマニュアル]),
      text(size: 7.5pt, fill: muted, counter(page).display("1 / 1", both: true)),
    )
  ],
)

#set text(font: "Noto Sans JP", size: 9.2pt, fill: ink, lang: "ja")
#set par(leading: 0.66em, spacing: 0.6em, justify: false)
#set list(indent: 1.05em, body-indent: 0.5em, spacing: 0.32em)
#set enum(indent: 1.2em, body-indent: 0.5em, spacing: 0.36em)
#set heading(numbering: none)
#show raw: set text(font: "Noto Sans Mono CJK JP", size: 0.91em, fill: rgb("#2D4960"))

#let section(number, title) = [
  #block(breakable: false)[
    #grid(
      columns: (11mm, 1fr),
      gutter: 3mm,
      align: horizon,
      box(
        width: 10mm,
        height: 10mm,
        radius: 50%,
        fill: accent,
        align(center + horizon, text(size: 10pt, weight: "bold", fill: white, number)),
      ),
      text(size: 17pt, weight: "bold", title),
    )
    #v(2mm)
    #line(length: 100%, stroke: 1.4pt + accent)
    #v(3.5mm)
  ]
]

#let sub(title) = [
  #v(1.5mm)
  #block(breakable: false)[
    #text(size: 11.5pt, weight: "bold", fill: accent)[#title]
    #v(1mm)
  ]
]

#let card(body, fill: surface, stroke: rule) = block(
  width: 100%,
  inset: 8pt,
  radius: 4pt,
  fill: fill,
  stroke: 0.65pt + stroke,
  body,
)

#let note(label, body, tone: accent, fill: accent-soft) = block(
  width: 100%,
  inset: (x: 9pt, y: 7pt),
  radius: 4pt,
  fill: fill,
  stroke: (left: 3pt + tone),
  [#text(weight: "bold", fill: tone)[#label] #h(4pt) #body],
)

#let key(body) = box(
  inset: (x: 4pt, y: 1.5pt),
  radius: 2.5pt,
  fill: white,
  stroke: 0.6pt + rule,
  text(font: "Noto Sans Mono CJK JP", size: 8.2pt, weight: "bold", body),
)

#let check(body) = [#text(fill: accent, weight: "bold")[□] #body]

#let staff-table(columns, ..cells) = table(
  columns: columns,
  inset: (x: 6pt, y: 5pt),
  stroke: 0.45pt + rule,
  fill: (x, y) => if y == 0 { accent-soft } else if calc.even(y) { rgb("#FFF9F1") },
  align: (x, y) => if y == 0 { left + horizon } else { left + top },
  table.header(..cells.pos().slice(0, columns.len()).map(c => text(weight: "bold", fill: accent, c))),
  ..cells.pos().slice(columns.len()),
)

// ---------------------------------------------------------------------------
// Cover / overview
// ---------------------------------------------------------------------------

#align(center)[
  #v(6mm)
  #text(size: 10pt, weight: "bold", fill: accent)[Linuxサークル　体験運営資料]
  #v(4mm)
  #text(size: 30pt, weight: "bold")[shell体験]
  #text(size: 23pt, weight: "bold", fill: accent)[スタッフマニュアル]
  #v(3mm)
  #text(size: 10pt, fill: muted)[迷子のペンギンTuxを、bashで探そう]
]

#v(8mm)

#card(fill: accent-soft, stroke: accent)[
  #text(size: 14pt, weight: "bold", fill: accent)[体験のゴール]
  #v(3pt)
  参加者が「黒い画面は怖いもの」ではなく、#text(weight: "bold")[文字でコンピューターへ指示できる道具]だと感じること。コマンドの暗記や用語の試験は行いません。
]

#v(5mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 5mm,
  card[
    #text(size: 11.5pt, weight: "bold", fill: accent)[基本コース]
    #v(2pt)
    1～3問 ／ #text(weight: "bold")[5～8分]

    一覧表示・内容表示・文字列検索
  ],
  card[
    #text(size: 11.5pt, weight: "bold", fill: gold)[発展コース]
    #v(2pt)
    4～5問 ／ #text(weight: "bold")[追加3～7分]

    オプション・パイプ・行数
  ],
)

#v(4mm)

#staff-table(
  (31mm, 1fr),
  [対象], [アルファベットと記号をキーボード入力できる人],
  [スタッフ配置], [体験PC 1～2台につき1人を目安],
  [画面構成], [左に問題、右に本物のbash。paneの移動操作は不要],
  [回答方法], [右側でコマンドを実行し、`answer 答え` で送信],
)

#v(5mm)

#note([最初に大切なこと], [参加者自身が左側の問題を読み、試す時間を取ります。最初からコマンドを読み上げ続けないでください。])

#v(4mm)

#text(size: 12pt, weight: "bold")[この冊子の使い方]
#v(2mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 5mm,
  [
    #check[開場前に全5問を通す] \
    #check[回答一覧を手元に置く] \
    #check[終了・初期化操作を練習する]
  ],
  [
    #check[困ったときは段階的に支援する] \
    #check[参加者の操作を責めない] \
    #check[復旧より予備PCへの案内を優先する]
  ],
)

#pagebreak()

// ---------------------------------------------------------------------------
// Preparation
// ---------------------------------------------------------------------------

#section([2], [当日までの準備])

#sub([必要な環境])

- LinuxまたはLinux VM
- Python 3.10以降、bash、tmux
- sudo権限を持たない体験専用ユーザー `trial`
- 日本語を表示できる端末と等幅フォント

#note([隔離設定], [VMではネットワーク、共有フォルダー、共有クリップボード、ドラッグ＆ドロップを無効にします。WSL2ではWindowsドライブの自動マウントとWindows interopも無効にします。], tone: danger, fill: danger-soft)

#v(2mm)
体験環境に個人ファイルや秘密情報を置かないでください。

#sub([開場前チェック])

#grid(
  columns: (8mm, 1fr),
  gutter: 2mm,
  align: top,
  [#key([1])], [`trial` ユーザーでログインする。],
  [#key([2])], [端末を最大化し、離れた位置から読める文字サイズにする。],
  [#key([3])], [`trial_tools/shells/new.py` を実行する。],
  [#key([4])], [左に問題、右に `trial$` が表示されることを確認する。],
  [#key([5])], [スタッフ自身で全5問を通し、回答一覧どおり進むことを確認する。],
  [#key([6])], [#key([Ctrl+B]) を押して離し、#key([Shift+R])、#key([y]) の順で終了する。],
  [#key([7])], [もう一度 `new.py` を実行し、問題1へ戻ることを確認する。],
)

#v(4mm)
#card[
  #text(weight: "bold", fill: accent)[起動コマンド]
  #v(2mm)
  ```sh
  cd trial_tools/shells
  ./new.py
  ```
]

#v(5mm)
#section([3], [参加者への案内])

#note([最初の説明], [
  「右側の黒い画面は、文字でコンピューターにお願いする場所です。左側の問題を見ながら操作します。間違えても体験専用なので大丈夫です。まず `ls` と入力してEnterを押してください。」
])

#sub([伝えるのは、この3点だけ])

- 画面の `trial$` は入力しない。その右側に入力する。
- 入力途中で #key([Tab]) を押すと、ファイル名を補完できる。
- 答えが分かったら `answer 答え` と入力する。

#sub([詰まったときの声かけ])

#staff-table(
  (18mm, 1fr),
  [順番], [声かけ・対応],
  [1], [「左側に何を調べると書いてありますか」],
  [2], [「使えそうなファイルはどれですか」],
  [3], [それでも難しければ、画面のヒントや正解コマンドを案内する],
)

#pagebreak()

// ---------------------------------------------------------------------------
// Answers
// ---------------------------------------------------------------------------

#section([4], [問題と回答一覧])

#staff-table(
  (22mm, 25mm, 1fr, 37mm),
  [問題], [ねらい], [想定コマンド], [送信する答え],
  [1. ファイルを見つける], [一覧表示], [`ls`], [`answer welcome.txt`],
  [2. ファイルを読む], [内容表示], [`cat welcome.txt`], [`answer Tux`],
  [3. 必要な行を探す], [文字列検索], [`grep Tux members.txt`], [`answer guide`],
  [4. 行番号も表示する], [オプション], [`grep -n Tux sightings.txt`], [`answer PC Room`],
  [5. 組み合わせる], [パイプと行数], [`grep Tux sightings.txt | wc -l`], [`answer 4`],
)

#v(4mm)

#note([判定について], [大文字・小文字、全角・半角、前後の空白は可能な範囲で自動的に吸収されます。想定コマンド以外で答えへ到達しても正解です。])

#v(3mm)

#card(fill: gold-soft, stroke: gold)[
  #text(weight: "bold", fill: gold)[3問目でコースを選択]
  #v(2mm)
  基本コースの完了画面になります。

  - 混雑時・疲れている参加者：`answer finish`
  - 余裕がある参加者：`answer next`
]

#v(6mm)

#section([5], [サポートの基準])

#grid(
  columns: (1fr, 1fr),
  gutter: 5mm,
  card[
    #text(size: 11pt, weight: "bold", fill: accent)[入力に慣れていない参加者]
    #v(2mm)
    - 一度に伝える操作は1つだけ。
    - ファイル名はTab補完を使ってもらう。
    - 記号 `|` はキーボード上の位置を指してよい。
    - 代わりに入力するときも、実行前に内容を説明する。
  ],
  card[
    #text(size: 11pt, weight: "bold", fill: gold)[早く終わった参加者]
    #v(2mm)
    次の自由課題から1つだけ案内します。

    - `grep` と `grep -n` の違いを見る。
    - `grep Mochi sightings.txt | wc -l` で別の名前を数える。
    - 上矢印キーで以前のコマンドを呼び、一部を書き換える。
  ],
)

#v(4mm)
#note([案内しないこと], [教材ディレクトリ外の探索、ソフトウェアのインストール、ネットワークを使う課題。], tone: danger, fill: danger-soft)

#v(3mm)
#note([説明の締め], [
  「`cat`、`grep`、`wc` はそれぞれ小さな仕事をする道具です。最後は `|` で道具をつなぎました。LinuxのCLIでは、このように小さな道具を組み合わせて、自分に必要な操作を作れます。」
])

#pagebreak()

// ---------------------------------------------------------------------------
// Reset / troubleshooting
// ---------------------------------------------------------------------------

#section([6], [次の参加者への初期化])

#grid(
  columns: (9mm, 1fr),
  gutter: 2mm,
  align: top,
  [#key([1])], [現在の参加者が完了したことを確認する。],
  [#key([2])], [#key([Ctrl+B]) を押して離す。],
  [#key([3])], [#key([Shift+R]) を押す。],
  [#key([4])], [確認表示で #key([y]) を押す。],
  [#key([5])], [端末で `./new.py` を実行する。],
  [#key([6])], [右側のpaneが選択され、問題1が表示されていることを確認する。],
)

#v(4mm)
#note([初期化の仕組み], [各回は新しい作業ディレクトリで始まるため、前の参加者の変更は引き継がれません。古い作業ディレクトリは閉場後に管理者がまとめて削除します。])

#v(2mm)
#note([禁止], [当日の判断で広いパスを削除しないでください。], tone: danger, fill: danger-soft)

#v(6mm)
#section([7], [トラブル対応])

#sub([コマンドが動かない])

#staff-table(
  (42mm, 1fr),
  [表示・状況], [対応],
  [`command not found`], [スペルと半角英字を確認する。],
  [`No such file or directory`], [`ls` でファイル名を確認し、Tab補完を試す。],
  [画面が止まった], [#key([Ctrl+C]) を1回押す。],
  [文字が大量に流れた], [#key([Ctrl+C]) の後、`clear` を実行する。],
  [`answer` に答えを付け忘れた], [使用例を確認し、もう一度入力する。],
)

#sub([左側の問題が進まない])

1. 右側に「左側へ答えを送りました」と出たか確認する。
2. 回答一覧と照合する。
3. 数秒待っても変わらなければ、その回を終了して `./new.py` で作り直す。

#sub([paneやshellを閉じてしまった])

その回を終了し、新しいセッションを起動します。参加者を責めず、#text(weight: "bold")[「体験用なので、すぐ最初から作り直せます」]と案内します。

#pagebreak()

// ---------------------------------------------------------------------------
// Remaining troubleshooting / reference
// ---------------------------------------------------------------------------

#section([7], [トラブル対応（続き）])

#sub([`new.py` が起動しない])

#staff-table(
  (47mm, 1fr),
  [表示・状況], [対応],
  [`tmuxが見つかりません`], [tmuxの導入を担当者へ依頼する。],
  [`教材ファイルがありません`], [`new.py` だけを別の場所へ移動していないか確認する。],
  [tmux関連のエラー], [`tmux list-sessions` の結果と画面のエラーをコアスタッフへ伝える。],
)

#v(4mm)
#note([復旧の判断], [原因調査に時間をかけすぎず、予備PCへ案内します。参加者の前で `sudo` を使った復旧や設定変更は行いません。], tone: danger, fill: danger-soft)

#v(7mm)
#section([8], [スタッフ用クイックリファレンス])

#staff-table(
  (1fr, 1.1fr),
  [操作], [キーまたはコマンド],
  [体験を起動], [`./new.py`],
  [実行中のコマンドを止める], [#key([Ctrl+C])],
  [画面を整理する], [`clear`],
  [体験を終了], [#key([Ctrl+B]) → #key([Shift+R]) → #key([y])],
  [tmuxセッション一覧], [`tmux list-sessions`],
)

#v(6mm)

#card(fill: accent-soft, stroke: accent)[
  #align(center)[
    #text(size: 14pt, weight: "bold", fill: accent)[採点ではなく、発見の体験を]
    #v(3mm)
    参加者の入力内容は採点しません。正解へ至る方法より、
    #text(weight: "bold")[「自分でファイルを調べ、必要な情報を取り出せた」]
    という体験を優先します。
  ]
]

#v(7mm)

#grid(
  columns: (1fr, 1fr),
  gutter: 5mm,
  card[
    #text(weight: "bold", fill: accent)[開始前]
    #v(2mm)
    #check[右側に `trial$`] \
    #check[問題1を表示] \
    #check[文字サイズを確認]
  ],
  card[
    #text(weight: "bold", fill: accent)[交代時]
    #v(2mm)
    #check[前の回を終了] \
    #check[`./new.py` で再起動] \
    #check[右側paneを選択]
  ],
)

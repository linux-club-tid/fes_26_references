# CLI体験 実装方針

## 構成

- 左paneに課題・ヒント、右paneに実際のbashを表示する
- pane分割にはtmuxを使い、`new.py`から自動起動する
- Pythonは擬似shellではなく、セッション作成と課題判定に使う
- WSL2とVirtualBoxでLinux内の実装を共通化する

```text
new.py
├─ 参加者用ディレクトリを作成
├─ 教材と回答コマンドをコピー
└─ tmuxを起動
   ├─ 左: guide.py（問題表示・回答判定）
   └─ 右: bash（コマンド実行・ansで回答送信）
```

## 共通の制限

- 体験専用の`trial`ユーザーを用意し、sudo権限を与えない
- 教材原本とプログラムはroot所有にする
- 参加者ごとに使い捨ての作業ディレクトリを作る
- VM・WSL内に秘密情報を置かない
- 必要に応じて`ulimit`でプロセス数とファイルサイズを制限する

## WSL2を使う場合

- `/etc/wsl.conf`でWindows interopとWindowsドライブのautomountを無効化する
- 必要なら`.wslconfig`の`networkingMode=none`でネットワークを無効化する
- Windows側のショートカットから`new.py`を起動する

## VirtualBoxを使う場合

- WSL2版と同じLinux内ファイルを配置する
- ネットワークアダプター、共有フォルダー、共有クリップボード、D&Dを無効化する
- `trial`でログインし、端末から`new.py`を起動する
- snapshotは必須にせず、セッション用ディレクトリの作り直しで初期化する

## 実装順序

1. [x] `new.py`からtmuxを左右分割して起動する
2. [x] 課題を表示・判定する`guide.py`を作る
3. [x] `cat`、`grep`、パイプを使う短い教材を作る
4. 専用ユーザー上で権限とリソース制限を確認する
5. WSL2で動作確認する
6. 同じ実装をVirtualBoxでも動作確認する

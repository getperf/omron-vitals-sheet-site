# omron-vitals-sheet-site

omron-vitals-sheet（OMRON Connect の血圧・体組成データを Google スプレッドシートへ蓄積する
Apps Script）の利用者向けサイトです。`karita-site` と同じ構成に合わせています。

## 概要

- 対象: omron-vitals-sheet の利用者（テンプレートをコピーして使う人）
- 内容: 製品概要、セットアップ手順、使い方、プライバシーポリシー、利用規約・免責
- 範囲外: 開発者向けの情報（ビルド、テスト、取込の内部仕様）。これらはアプリのリポジトリの README に置く
- 技術スタック: MkDocs Material, GitHub Pages

利用者向けの手順とプライバシー・免責は、このサイトを正本とする。

## セットアップ手順

### 1. 必要ツールのインストール（初回のみ）

```bash
pip install -r requirements.txt
```

**uv を使う場合**（ローカル専用。CI は `requirements.txt` を使う）:

```bash
uv venv
uv pip install -r requirements.txt
```

### 2. ローカルでの動作確認

```bash
mkdocs serve
# 他のアプリが8000ポートを使用している場合
mkdocs serve -a 127.0.0.1:8001
```

## 公開前に差し替える箇所

テンプレートの検証が終わるまで、次の値は仮のままにしてある。`TODO(公開時)` で検索できる。

- テンプレートの `/copy` リンク（`<TEMPLATE_ID>`）
- アプリのリポジトリ URL
- スクリーンショット（テスト用アカウントと合成データで撮る。実データを写さない）

## デプロイ方法

```bash
./script/deploy.sh
```

GitHub Pages のカスタムドメインを `vitals-sheet.getperf.net` に設定し、DNS 側で CNAME を
GitHub Pages 先へ向けること（`CNAME` ファイルはリポジトリに含めてある）。

## ライセンス

MIT

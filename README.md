# README
---
# おちつき
---
## 概要
---
ストレス解消のためのアプリです。主な機能はコーピングレパートリーとストレス認識改善です。コーピングレパートリーは、自分の小さなストレス解消法を予め登録してもらい、ストレスを感じた時に確認することができる機能です。ストレス認識改善は、ストレスに対する過剰な思い込みを認識してもらう機能です。ストレスを感じた時の内容と点数(0~100%)を登録していただき、それに対する過剰な思い込みの内容とストレスの減少度を点数で登録していただきます。改善前と改善後のストレス軽減度を折れ線グラフで確認することができます。

---
## バージョン情報
---
Rails 5.1.7
Ruby 2.6.0

---
## 環境構築
以下のコマンドでphantomjsをインストールしてください。headlessでjsテストをするために必要です。
- $ brew cask install phantomjs

---
## 機能一覧
---
- ログイン機能
- ユーザー登録機能
  - 名前、メールアドレス、パスワードを登録
- コーピングレパートリー登録機能
  - コーピングレパートリーを登録
  - コーピングレパートリーを削除
  - 登録したコーピングレパートリーを一覧表示で確認
- ストレス認識改善機能
  - 日付け登録機能
  - ストレス内容、思い込み内容、ストレス度(0~100%)、ストレス改善度(0~100%)の登録機能
  - 登録内容の削除機能
  - 登録内容の編集機能
- マイページ
  - ストレス認識改善機能で登録したストレス度とストレス改善度を基にした折れ線グラフを表示
  - コーピングレパートリーからランダムで1つ表示する機能
  - アイコン画像登録機能

---
## カタログ設計
---
https://docs.google.com/document/d/12EFRt1PRwsnqYHBPpdWhWT7I2xxKR38AsAkc1rNPhJ8/edit

---
## テーブル定義書
---
https://docs.google.com/spreadsheets/d/1Ln1OGGBt58OrmYdNHfSR1SKQJjF2ScVJuV54ih0tBe8/edit#gid=0

---
## ER図
---
https://docs.google.com/spreadsheets/d/1SRosTLLmc9acN-HJNTLGRVp2k1CBqtCJLBQzoVDm0F4/edit#gid=0

---
## 画面遷移図
---
https://docs.google.com/spreadsheets/d/1WZ3xeJbZGZzZVJ4li9tOQR9cxfdHtVgXpdKh4NInD3I/edit#gid=0

---
## ワイヤーフレーム
---
https://cacoo.com/diagrams/Nq4RFiOtbfdgIg1a/6E4E9

---
## 使用予定Gem
---
- devise
- carrierwave
- mini_magick
- chartkick
- groupdate

- コメント機能

[![Image from Gyazo](https://i.gyazo.com/83f13608e69e183209fbe65aaa7f4734.png)](https://gyazo.com/83f13608e69e183209fbe65aaa7f4734)

# アプリケーション名
Life Function App

# アプリケーションの概要
LifeFunctionAppは、医療従事者が認知機能評価をipadやパソコンで管理できるアプリです。

# URL
https://life-function-app.herokuapp.com/  
Basic認証が必要です。
- Basic認証ID: admin
- Basic認証パスワード: 2222
# テスト用アカウント
- メールアドレス: test@test.com
- パスワード: a00000

# 利用方法

## 1. ログイン
[![Image from Gyazo](https://i.gyazo.com/324beec0227f96ad8f32a0bc6154cb2c.png)](https://gyazo.com/324beec0227f96ad8f32a0bc6154cb2c)
1. テスト用アカウントのメールアドレス、パスワードを入力します。
2. 「ログイン」ボタンを押します。
3. 利用者一覧ページに遷移します。

## 2. 患者登録
[![Image from Gyazo](https://i.gyazo.com/7c13f84941cb71e0278cdeab1c96324d.gif)](https://gyazo.com/7c13f84941cb71e0278cdeab1c96324d)
1. 利用者一覧ページから右上にある「利用者登録」ボタンを押します。
2. 利用者の情報を入力します。
3. 「登録」ボタンを押します。
4. 利用者一覧ページに遷移します。

## 3. 評価を投稿する
[![Image from Gyazo](https://i.gyazo.com/1a1c2d2de035bc32dcbb6e20bc63f583.gif)](https://gyazo.com/1a1c2d2de035bc32dcbb6e20bc63f583)
1. 利用者一覧ページから、評価する利用者を押します
2. 利用者詳細ページに遷移します。
3. 右上の「評価する」ボタンを押します。
4. 評価ページに遷移します。
5. 評価項目を入力します。  
6. 「評価終了」ボタンを押します。
7. 利用者一覧ページに遷移します。


## 利用者情報を削除する
1. 利用者一覧ページから、削除したい利用者を押します。
2. 利用者詳細ページで中央下にある「削除」ボタンを押します。
3. 削除完了ページに遷移します。  
＊利用者情報を削除すると紐付けられた評価の投稿も削除されます。

## 評価の投稿を削除する
1. 利用者詳細ページの「認知機能評価日一覧」の評価日を選択します。
2. 評価詳細ページに遷移します。
3. 下部にある「削除ボタン」を押します。
4. 削除完了ページに遷移します。  
＊評価の投稿のみを削除します。利用者情報は削除されません。

# アプリケーションを作成した背景
病院勤務をしている中で、認知症の方と接する機会が非常に多いです。  
介護保険を申請するにも、薬の内服管理や運動の自主トレーニングを指導するにも理解ができるのか判断材料が必要となります。
業務の中で、紙で管理する事が多く保管場所や保管する物を用意する必要があります。  
検査結果を前回と見比べる時に探す手間や紙カルテならば病棟まで確認しに行く時間的コストが掛かっています。そこで電子化し移動することや探すといった時間的コスト、場所を取ってしまう物理的なコストを削減するため、このアプリケーションを作成することにしました。  
 病院は女性職員が多く、地方の病院では20~70歳代前後まで仕事をしています。パソコンなどの機械が不得意な方が多い為、できるだけシンプルな使い方になるようにデザインしました。
# 洗い出した要件
https://docs.google.com/spreadsheets/d/1vHqSsSCL3iDxy9MhST05MTHK74BUtC9JHKWbFE-3Lto/edit?usp=sharing

# 実装した機能についてのGIFおよびその説明
- 評価投稿ページでは合計点数によって、コメントの表示を変更し、背景色を変化するようにしました。
[![Image from Gyazo](https://i.gyazo.com/f2d7902f2f849aaa3088cb75297dfca3.gif)](https://gyazo.com/f2d7902f2f849aaa3088cb75297dfca3)
- 患者詳細ページの評価一覧は件数が多くなっても表示しやすいように、オーバーフローで表示しました。
[![Image from Gyazo](https://i.gyazo.com/8fda5bbf13ddd36bf52b9909a30a2dcb.gif)](https://gyazo.com/8fda5bbf13ddd36bf52b9909a30a2dcb)

# 実装予定の機能
- 利用者情報編集機能
- 評価情報編集機能
- 評価ページに画像をポップアップで表示する機能
- 事業所毎に利用者が表示される機能

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/e245b802312f8c074926d7a3cc9d4982.png)](https://gyazo.com/e245b802312f8c074926d7a3cc9d4982)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/307fa25e3397161a43a89ed79a3d390a.png)](https://gyazo.com/307fa25e3397161a43a89ed79a3d390a)

# 開発環境
- Visual studio code
- Ruby       2.6.5  
- Rails      6.0.0  
- mysql2     0.5.3  
- puma       3.11  
- sass-rails 5  
- webpacker  4.0  
- tubolinks  5  
- jbuilder   2.7  
- bootsnap   1.4.2

### テストコード
- rspec-rails 4.0.0  
- factry_bot_rails  
- faker  
- gimei 

### 自動修正
- rubocop  

### その他
- pry-rails  
- devise
- active_hash
- bootstrap 5.0.2

### 本番環境
- heroku

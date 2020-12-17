・アプリケーション名<br>
INTERIOR_APP<br>

・アプリケーション概要<br>
このアプリは新生活を始める方、引越し、部屋の衣替えを検討中の方をペルソナとし、衣食住の「住」に着目して作成いたしました。<br>
日本人は比較的インテリアに興味がありすべての人が生活の中で関わりのある部屋について参考となるインテリアやデザインを掲載したアプリケーションになります。おすすめ家具メーカーや、日本国内のおすすめ家具屋さんMAPを作成しました。<br>
またユーザー自身のインテリアを共有するという機能も実装し、投稿数が増えるにつれて紹介できるインテリアも増えるという運用のコストを下げるということも意識しました。<br>

・URL


・テスト用アカウント<br>
email → sample1@sample.com<br>
password → sample1<br>

・課題解決
このアプリではインテリアをこだわりたいが、どのようなインテリアスタイルがあるのか分からないという課題を解決するものです。

・要件(テーブル設計)
## users
|Column            |Type           |Options                         |
|----------------- |-------------- |------------------------------- |
|email             | string        | null: false, unique: true      |
|nickname          | string        | null: false                    |
|password          | string        | null: false                    |
|category_id       | integer       | null: false                    |

### Association
- has_many :myinteriors
- has_many :comments

## myinteriors
|Column                 |Type           |Options                         |
|---------------------- |-------------- |------------------------------- |
|title                  | string        | null: false                    |
|concept                | text          | null: false                    |
|category_id            | integer       | null: false                    |
|user                   | references    | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments

## comments テーブル
| Column    | Type       | Options                         |
| --------- | ---------- | ------------------------------- |
| text      | text       | null: false                     |
| user      | references | null: false, foreign_key: true  |
| myinterior| references | null: false, foreign_key: true  |

### Association
- belongs_to :myinterior
- belongs_to :user


・利用方法と実装した機能についての説明<br>
１テスト用アカウントでログイン。<br>
２ログイン後、右上の「インテリアを見る」をクリックし、ログインユーザー用トップページに遷移する。<br>
３トップページではインテリア紹介やインテリア共有、国内のおすすめのお店の位置を掲載している。<br>
４「インテリアを共有する」をクリックすると、投稿フォームに遷移し情報を入力し、「投稿する」ボタンをログインユーザーが投稿したインテリアがトップページに表示されます。<br>
５投稿内容を編集、削除したい場合は投稿詳細ページにある「編集」「削除」ボタンにより任意のアクションが可能です。<br>
６コメント機能に関してはフォームに質問内容を入力後、「送信する」をクリックするとコメントを送信できます。<br>

・今後、実装予定の機能<br>
今後はインテリア紹介のパターンを増やすとともに、ユーザーのインテリア共有の数が増えると紹介できるインテリアの数も増えるというシステムなので、多くのユーザーに使用してもらえるような（誰でも使用できる環境）を作っていきたいと思います。また、「SHOP INFORMATION」のメーカー数も増やし、このサイトがあれば国内の家具屋さんの位置情報は困らないというサービスにも力を入れたいと思っております。

・データベース設計(ER図)<br>
 https://gyazo.com/8426e12bf971785e44b2f97b777c9695

・ローカルでの動作方法<br>
 https://github.com/YUTAKA-KOMATSU/interior_app.git
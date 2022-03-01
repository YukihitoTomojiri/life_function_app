# Life Function App

---
LifeFunctionAppは、実際にリリースするものではなく、ポートフォリオとして採用担当者様にご覧いただくことを目的としているソリューションです。個人情報保護や著作権に関して考慮されていません。

-----
目次
1. ペルソナ
2. ユーザーストーリー
3. テーブル設計
4. ER図

-----
# 1. ペルソナ
- 職業は「医療・介護従事者」
- 医療・介護従事者の方を考えているので「性別は女性」「年齢は20~60代」

-----
# 2. ユーザーストーリー  

- ユーザーの問題点  
  - 外来受診や入院時及び施設入所時の認知機能検査、運動機能検査に時間が掛かる。
  - 認知症があるのか分からないが、1人暮らしで生活をしていたので患者が服薬管理をした。しかし、適切に服薬できていなかった。
  - 下肢筋力低下があるが、ポータブルトイレを設置し、夜間転倒してしまった。  

- 課題解決
  - 検査時間の短縮が必要。
  - PCでもタブレットでも情報共有される。
  - ipadなどタブレット端末を利用したアプリケーションで準備物を少なくする。

- 解決に必要な機能  
  - 同一施設ならば利用者の一覧を表示し検索できる機能
  - ユーザー（医療介護者）と利用者の管理機能
  - 検査結果を比較できる機能

  - UIについて準備物の簡素化についての機能
    - ipadなどタブレット端末を意識したUI設計
    - JavaScriptを用いてタイマーやストップウォッチ機能
    - 設問の内容上、画像を表示し、一時的に隠し、クリックしたら再表示できる機能
    - 音声録音機能

---
# 3. テーブル設計
## Users table
| Columns          | Type   | Options                   |
|------------------|--------|---------------------------|
| first_name       | string | null: false               |
| last_name        | string | null: false               |
| first_name_kana  | string | null: false               |
| last_name_kana   | string | null: false               |
| birthday         | date   | null: false               |
| email            | string | null: false, unique: true |
| password         | string | null: false               |
| facility         | string | null: false               |
| affiliation      | string |                           |
## Association
- has_many: patients
- has_many: Hasegawa_dimentia_scale
-----
## Patients table
| Columns                 | Type      | Options                        |
|-------------------------|-----------|--------------------------------|
| patient_first_name      | string    | null: false                    |
| patient_last_name       | string    | null: false                    |
| patient_first_name_kana | string    | null: false                    |
| patient_last_name_kana  | string    | null: false                    |
| gender_id               | integer   | null: false                    |
| birthday                | date      | null: false                    |
| care_certified_id       | integer   | null: false                    |
| prefecture_id           | integer   | null: false                    |
| user                    | reference | null: false, foreign_key: true |
## Association
- has_many: Hasegawa_dimentia_scale
- belongs_to: users
- belongs_to_active_hash: gender
- belongs_to_active_hash: care_certified
- belongs_to_active_hash: prefecture
-----
## Hasegawa_dimentia_scale table
| Columns           | Type      | Options                        |
|-------------------|-----------|--------------------------------|
| testing_date      | date      | null: false                    |
| testing_place     | string    |                                |
| answer_1          | integer   | null: false                    |
| answer_2_1        | integer   | null: false                    |
| answer_2_2        | integer   | null: false                    |
| answer_2_3        | integer   | null: false                    |
| answer_2_4        | integer   | null: false                    |
| answer_3          | integer   | null: false                    |
| answer_4_1        | integer   | null: false                    |
| answer_4_2        | integer   | null: false                    |
| answer_4_3        | integer   | null: false                    |
| answer_5_1        | integer   | null: false                    |
| answer_5_2        | integer   | null: false                    |
| answer_6_1        | integer   | null: false                    |
| answer_6_2        | integer   | null: false                    |
| answer_7_1        | integer   | null: false                    |
| answer_7_2        | integer   | null: false                    |
| answer_7_3        | integer   | null: false                    |
| answer_8          | integer   | null: false                    |
| answer_9          | integer   | null: false                    |
| answer_9_memo     | integer   |                                |
| total_score       | integer   | null: false                    |
| user              | reference | null: false, foreign_key: true |
| patient           | reference | null: false, foreign_key: true |
### Association
- belongs_to: patient
- belongs_to: users
-----

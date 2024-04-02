#　モデル設計
questionモデル
- title
- content
- user_name

# コントローラー設計
## index
質問投稿一覧の表示
### コントローラー
@questions変数にすべてのtweetを挿入
### view
eachメソッドで@questionsからすべてを出力

## new
質問投稿画面の表示
### コントローラー
空のinstance変数、@questionを作成
### view
formヘルパーメソッドに@questionを挿入
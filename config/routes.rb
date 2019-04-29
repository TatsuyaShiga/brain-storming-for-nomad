# ここはルーティング。
# URLのリクエストを受けて、コントローラーに作業指示を行う場所です。
Rails.application.routes.draw do

# ホーム画面関連
  get 'tweets' => 'tweets#index'         # ホーム画面の表示

# 会員登録関連
  get 'signin' => 'tweets#signin'  # 会員登録画面の表示
  post 'signin' => 'tweets#signin' # 会員登録フォームの内容送信
  
# 新規投稿関連
  get 'new' => 'tweets#new'        # 新規投稿画面の表示
  post 'tweets' => 'tweets#create'       # 新規投稿フォームの内容送信   これあってる？
  
# ログイン関連
  get 'login' => 'tweets#login'    # ログイン画面の表示
  post 'login' => 'tweets#login'   # ログインフォームの内容送信
  
# 投稿の個別表示関連
  get 'show' => 'tweets#show'      # 投稿個別表示画面の表示
  get 'show' => 'tweets#show'      # 投稿の削除              これあってる？
  post 'show' => 'tweets#show'     # 投稿の編集
  
# 確認応対用のサイトまっぷ
  get 'sitemap' => 'tweets#sitemap' # 全体の機能を確認する際に使います
  
end

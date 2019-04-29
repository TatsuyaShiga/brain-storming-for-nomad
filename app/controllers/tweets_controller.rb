# ここは、routes.rbで定義された
# 'tweets#***'の、***アクションに合わせたアクション内容を設定する場所です。
class TweetsController < ApplicationController


# ホーム画面関連
  def index
    @tweets = Tweet.all        # ホーム画面の表示 をした際のアクション
  end

  
# 会員登録関連
  def signin  # 会員登録画面の表示 をした際のアクション
  end
# 会員登録フォームの入力内容はどうやって飛ばす？


# 新規投稿関連
  def new        # 新規投稿画面の表示 をした際のアクション
  end
  
  # def create   # 新規投稿フォームの内容送信 をした際のアクション
  # Tweet.create(text: params[:text]) 
  # end
  
  def create
    Tweet.create(text: params[:text])
  end
  
# ログイン関連
  def login    # ログイン画面の表示 をした際のアクション
  end
# ログインフォームの入力内容はどうやって飛ばす？


# 投稿の個別表示関連
  def show      # 投稿個別表示画面の表示
  end
# 投稿の削除はどうやってやる？
# 投稿の編集はどうやってやる？

end
# ここは、routes.rbで定義された
# 'tweets#***'の、***アクションに合わせたアクション内容を設定する場所です。
class TweetsController < ApplicationController


# 未ログイン時は投稿画面に飛ばないようにする機能

  before_action :move_to_index, except: %i[index show sitemap]
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

# ホーム画面関連
  def index
    @tweets = Tweet.all.order('id DESC')        # ホーム画面の表示 をした際のアクション
# 全ツイートの投稿者を都度確認して重くなることを防ぐメソッド
  end
  
# 会員登録関連
  def signin  # 会員登録画面の表示 をした際のアクション
  end
# 会員登録フォームの入力内容はどうやって飛ばす？


# 新規投稿関連
  def new        # 新規投稿画面の表示 をした際のアクション
  end
  
  def create  # 新規投稿フォームの内容送信 をした際のアクション
    Tweet.create(text: params[:text], user_id: current_user.id)
    redirect_to action: :index
  end

# ログイン関連
  def login    # ログイン画面の表示 をした際のアクション
  end


# 投稿の個別表示関連

  def show      # 投稿個別表示画面の表示
    @tweet = Tweet.find(params[:id])
  end
  
  def edit      # 投稿の編集
    @tweet = Tweet.find(params[:id])
  end
  
  def update      # 投稿の編集後のアクション
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.update(text: params[:text])
    end
  end

  def destroy      # 投稿の削除
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
  end



end
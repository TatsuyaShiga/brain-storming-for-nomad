class Tweet < ApplicationRecord
  
# 投稿１に対してユーザー１という関係性の定義  
  belongs_to :user

end

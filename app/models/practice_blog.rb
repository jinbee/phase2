class PracticeBlog < ApplicationRecord
  validates :title, 
   #presence: {:message =>'は必須です。'}
   length:{ in: 1..140 ,:message =>'は半角1文字以上140文字以下でお願いします。'}
  validates :content, 
   length:{ in: 1..140 ,:message =>'は半角1文字以上140文字以下でお願いします。'}

end

Rails.application.routes.draw do
  root to: 'practice_blogs#index'
  resources :practice_blogs do
  #IDがいらない(データを特定しない場合collection。IDいるのはmember
    collection do
      #メソッド名:アクション名
      post:confirm
    end 
  end

end

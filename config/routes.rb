Rails.application.routes.draw do
  
  resources :practice_blogs do
  #IDがいらない(データを特定しない場合collection。IDいるのはmember
    collection do
      #メソッド名:アクション名
      post:confirm
    end 
  end
  get 'practice_blogs/hogee',to:'blogs#hogee'  
  post 'practice_blogs/new',to:'blogs#new'
  
end

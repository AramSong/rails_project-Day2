Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  get '/home/index' => 'home#index'  #/home/index을 받으면 home콘트롤러의 index로 가라
#  post'/home/index' => 'home#create'
  root 'home#index'
#  get '/lotto' => 'home#lotto'
  
  get '/lotto' => 'lotto#index'    #lotto_cotroller에 index액션으로
  get '/lotto/new' => 'lotto#new'  #lotto_cotroller에 new액션으로 
  
  get '/lunch' => 'home#lunch'
    
  get '/users' => 'user#index'
  get '/users/new' => 'user#new'
  get '/user/:id' => 'user#show'

  post 'user/create' => 'user#create'
  
end
Rails.application.routes.draw do
  # 收支
  get '/account' => 'pages#account'
  namespace :account do
    resources :expenses,:incomes
  end
  # 首頁
  root 'pages#index'
end
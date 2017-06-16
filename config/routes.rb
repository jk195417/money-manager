Rails.application.routes.draw do
  devise_for :users

  # 收支
  resources :records, except: [:new] do
    collection do
      get 'income'
      get 'expense'
    end
  end

  resource :analysis, only: [:show] do
  end

  # 首頁
  root 'pages#index'
end

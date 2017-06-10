Rails.application.routes.draw do
  devise_for :users

  # 收支
  resources :records, except: [:new] do
    collection do
      get 'income'
      get 'expense'
    end
  end
  # scope :money_records do
  #   resources :expenses
  #   resources :incomes
  # end

  # 首頁
  root 'pages#index'
end

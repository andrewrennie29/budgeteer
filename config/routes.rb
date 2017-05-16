Rails.application.routes.draw do
  
  root 'reports#index'

  resources :reports
  resources :expenses
  resources :budgets
  scope :admin do
    resources :budget_periods
    resources :budget_dispositions
    resources :budget_types
    resources :expense_owners
    resources :expense_categories
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

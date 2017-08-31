Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :mentors
  resources :students

  get "/404" => "errors#not_found"
  get "/500" => "errors#exception"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

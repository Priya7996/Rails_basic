Rails.application.routes.draw do
  get 'list' =>'users#index'
  post 'list1' =>'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

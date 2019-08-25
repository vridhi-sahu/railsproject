Rails.application.routes.draw do
  resources :teachers
  resources :images, only: [:new, :create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "users/load"
  get "employees/load"
  get "students/mail"
  # match ":controller(/:action(/:id))", :via => [:get, :post] 
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end

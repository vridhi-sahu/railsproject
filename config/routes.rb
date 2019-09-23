Rails.application.routes.draw do
  resources :teachers
  resources :images, only: [:new, :create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index", to: "home#index"
  get "users/load", to: "user#load"
  get "employees/load", to: "employee#load"
  get "students/mail", to: "students#mail"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end

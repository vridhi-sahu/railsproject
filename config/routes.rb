Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "users/load", to: "users#load"
  get "employees/load", to: "employees#load"
  get "students/mail", to: "students#mail"
  resources :teachers
  resources :images, only: [:new, :create, :index]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end

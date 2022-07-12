Rails.application.routes.draw do
  root 'static_pages#home'
  # root '', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  # get '/help', to: 'static_pages#help'
  # żądanie link  gdzie   kontroler # jego metoda
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end

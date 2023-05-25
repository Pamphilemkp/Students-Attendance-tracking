Rails.application.routes.draw do
  get 'static_pages/welcome_page'
  get 'static_pages/privacy_policy', as: 'privacy_policy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#welcome_page"
end

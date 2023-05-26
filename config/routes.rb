Rails.application.routes.draw do
  # get 'landing_pages/welcome_page'
  get 'landing_pages/privacy_policy', as: 'privacy_policy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "landing_pages#welcome_page"
end

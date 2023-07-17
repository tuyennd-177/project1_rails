Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '(:locale)', locale: /en|vi/ do
    root 'static_pages#home'
    get '/help', to: 'static_pages#help'
  end
end

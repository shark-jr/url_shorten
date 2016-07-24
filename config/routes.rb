Rails.application.routes.draw do
  resources :urls, param: :short_url
  root 'urls#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

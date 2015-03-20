Rails.application.routes.draw do

  resources :messages
  resources :button_presses, only: [:create]

  get 'get_name', to: "welcome#get_name"
  post 'set_name', to: "welcome#set_name"

  root 'welcome#get_name'

end

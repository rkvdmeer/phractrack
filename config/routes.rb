Rails.application.routes.draw do
  root :to => "visitors#index"
  
# Devise  
  devise_for :users
  resources :users
  
# Instiki
# was 'create_web', :controller => 'admin', :action => 'create_web'
# heb het idee dat het ook wel restful kan
  recources :web
end

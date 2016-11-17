Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'organizations#index'
  get "/organization", to: "organizations#index"
  get '/organization/new', to: 'organizations#new'
  post '/organization/create', to: 'organizations#create'

  get '/committee_member/new', to: 'committee_member#new'
  get '/committee_member/create', to: 'committee_member#create'
  post '/committee_member/create', to: 'committee_member#create'

  get '/officer/new', to: 'officers#new'
  post '/officer/create', to: 'officers#create'
  
  patch '/delete', to: 'committee_member#delete'
end
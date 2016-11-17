Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'organizations#index'
  get "/organizations", to: "organizations#index"
  get "/organizations/create", to: "organizations#create"
  get '/committee_member/new', to: 'committee_member#new'
  post '/committee_member/create', to: 'committee_member#create'
end

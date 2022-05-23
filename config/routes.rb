Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/projects/:project_id', to: 'projects#show'
  # patch '/projects/:project_id', to: 'projects#update'
  post '/projects/:project_id/contestants', to: 'contestant_projects#create'

  get '/contestants', to: 'contestants#index'
end

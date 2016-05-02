Rails.application.routes.draw do
  get '/' => 'tournaments#index'
  get 'api/tournaments/:id' => 'tournaments#api'
  post 'api/tournaments/' => 'tournaments#create'
end

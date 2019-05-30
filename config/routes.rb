Rails.application.routes.draw do
  get '/results' => 'results#index'
  get '/results/top/:num' => 'results#top'
  post '/results' => 'results#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

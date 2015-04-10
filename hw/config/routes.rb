Rails.application.routes.draw do
  get '/greet' => 'greet#show'
end

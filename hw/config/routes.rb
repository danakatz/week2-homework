Rails.application.routes.draw do

  get '/greet' => 'greet#show'
  get '/contact' => 'contacts#enter'
  get '/contact_submitted' => 'contacts#confirm'
  
end

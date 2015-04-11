Rails.application.routes.draw do

  get '/greet' => 'greet#show'
  get '/contact' => 'contacts#enter'
  get '/contact_submitted' => 'contacts#confirm'
  get '/rps' => 'rps#choose'
  get '/rps_play' => 'rps#results'
  get '/dice' => 'dice#intro'
  get 'dice/roll' => 'dice#roll'

end

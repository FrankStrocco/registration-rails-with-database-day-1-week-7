Rails.application.routes.draw do

  root 'users#welcome'

  post '/register' => 'users#register'

  get '/log_in' => 'users#log_in'

  get '/show' => 'users#show'

end

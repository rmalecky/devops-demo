Rails.application.routes.draw do
  get '/health_check', to: 'health_check#git'
end

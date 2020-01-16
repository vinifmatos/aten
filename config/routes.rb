Rails.application.routes.draw do
  root 'home#index'
  namespace :private do
    resources :atendimentos, except: [:new, :create]
    resources :assuntos
    resources :tipo_atendimentos
  end

  namespace :public do
    scope '/atendimento' do
      get '/novo', to: 'atendimentos#new', as: 'novo_atendimento'
      post '/novo', to: 'atendimentos#create'
      get 'consulta', to: 'atendimentos#consulta', as: 'consulta_atendimento'
      post 'consulta', to: 'atendimentos#pesquisa'
      get '/protocolo/:id', to: 'atendimentos#protocolo', as: 'protocolo_atendimento'
    end
  end
end

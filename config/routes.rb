Rails.application.routes.draw do
  namespace :private do
    root to: 'home#index'
  end

  authenticated :usuario do
    get '/private', to: 'private/home#index', as: :authenticated_root
  end

  devise_for :usuarios
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

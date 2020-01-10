Rails.application.routes.draw do
  root 'home#index'
  resources :atendimentos
  resources :assuntos
  resources :tipo_atendimentos
  get 'consulta/atendimento', to: 'atendimentos#consulta', as: 'consulta_atendimento'
end

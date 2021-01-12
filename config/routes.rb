Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope :auth do
    devise_for :owners,
               path: '',
               path_names: { sign_in: :login, sign_out: :logout },
               controllers: { sessions: 'deep/owners/sessions' }
  end

  namespace :deep do
    root to: 'dashboard#index'
  end
end

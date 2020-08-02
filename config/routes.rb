Rails.application.routes.draw do
  mount_devise_token_auth_for 'Account', at: 'accounts'
  namespace 'api' do
    namespace 'v1' do
      resources :questions
      resources :answers
    end
  end
end

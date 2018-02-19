Rails.application.routes.draw do
  root to: 'welcome#index'
  mount_devise_token_auth_for 'User', at: 'auth'#,  :controllers => {sessions: 'sesssions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :effort_categories
  resources :backlog_items
  resources :sprints
  get 'welcome/index'
  get 'welcome/center'
  post 'welcome/addScrumMaster'
  post 'welcome/addTeamMember'
  post 'welcome/addProductOwner'

  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

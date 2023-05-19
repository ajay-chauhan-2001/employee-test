Rails.application.routes.draw do
  root to: 'projects#index'

  resources :projects do
    member do
      get 'employees', to: 'projects#employees'
      post 'assign_employee'
      delete 'unassign_employee'
    end
  end

  resources :employees do
    member do
      get 'projects', to: 'employees#projects'
    end
  end

  
end
Rails.application.routes.draw do
  
 
  devise_for :admins
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :teachers
  resources :courses
  resources :cohorts
  resources :students
  resources :studentcohorts

  root 'teachers#index'
end

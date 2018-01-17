Rails.application.routes.draw do

  get 'hobbies/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :people, shallow: true do
    resources :hobbies
  end
end

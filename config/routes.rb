Rails.application.routes.draw do

  root 'flowerpots#index'


  resources :flowerpots do
    resources :plants do
      resources :flowers 
    end
  end
end

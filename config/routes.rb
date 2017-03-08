Rails.application.routes.draw do
  resources :dinosaurs, only: [:show] do
    resources :bones
  end
end

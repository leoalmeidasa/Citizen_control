Rails.application.routes.draw do
  resources :citizens
  root to: "citizens#index"
  resources :citizens do
    resources :file_uploads, only: [:new, :create]
  end
end

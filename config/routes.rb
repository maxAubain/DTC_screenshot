Rails.application.routes.draw do
  root controller: :screenshotreqs, action: :index
  resources :screenshotreqs
end

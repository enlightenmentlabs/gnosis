Rails.application.routes.draw do
  get "/browse", to: "browse#index"
  # resource :browse, only: [:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

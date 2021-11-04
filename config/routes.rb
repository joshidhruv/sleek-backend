Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: "json" } do
    scope module: :v1, constraints: ApiConstraint.new(version: 1) do
      resources :deals
      resources :retailers
    end
  end
end

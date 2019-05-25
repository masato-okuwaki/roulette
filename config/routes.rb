Rails.application.routes.draw do
  root "roulette#index"
    resources :roulette, only: [:index, :create, :edit,] do
    collection do
      get 'search'
    end
  end
end

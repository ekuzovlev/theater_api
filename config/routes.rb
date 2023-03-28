Rails.application.routes.draw do
  # API V1 routes

  namespace :api do
    namespace :v1 do
      resources :calendars, only: %i[index create destroy]
      resources :perfomances, only: %i[create destroy]
      end
    end
  end
end

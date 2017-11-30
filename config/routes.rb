Rails.application.routes.draw do
  use_doorkeeper
  resources :diaries do
    resources :thoughts do

    end
  end
end

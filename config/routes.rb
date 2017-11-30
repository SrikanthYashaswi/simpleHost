Rails.application.routes.draw do
  resources :diaries do

    resources :thoughts do

    end
  end

end

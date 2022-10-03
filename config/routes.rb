Rails.application.routes.draw do
    resources :tweets
    get 'tweets/index', to: 'tweets#index'
    root "tweets#index"
    get 'new_tweet_path', to: 'tweets#new'
    post 'tweets', to: 'tweets#create'
    delete 'tweets/:id', to: 'tweets#destroy'
    get 'tweets/id', to: 'tweets#show'
    get 'tweets/:id/edit', to: 'tweets#edit'
    patch 'tweets/:id', to: 'tweets#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

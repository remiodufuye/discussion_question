
Rails.application.routes.draw do
  resources :tweets, only: [:show, :index, :edit, :update] do
    get 'comments', as: 'comments'
  end
end


# resources :tweets, only: [:show, :index] do
#   resources :comments, only: [:show] do
#     get 'likes', as: 'likes'
#   end
# end
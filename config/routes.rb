Rails.application.routes.draw do

  get 'chats' => 'chats#index'
  post 'chats' => 'chats#index'

end

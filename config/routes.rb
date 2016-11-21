Rails.application.routes.draw do

  get 'chats' => 'chats#index'
  post 'chats' => 'chats#create'
  delete 'chats' => 'chats#destroy'

end

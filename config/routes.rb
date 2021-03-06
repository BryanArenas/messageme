Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'chatroom#index'

  #post/get/delete are the functions of routes. One sends info, one gets and one destroys.
  #the to: function directs it to a controller method. In this case, messages controller
  #and the create method --> def create section.
  post 'message', to: 'messages#create'
  mount ActionCable.server, at: '/cable'

end

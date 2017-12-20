Rails.application.routes.draw do
  get 'post/new' => 'post#new'

  post 'post/create'

  get 'post/show/:id' => 'post#show'

  get 'post/index'

  delete 'post/destroy/:id' => 'post#destroy'

  get 'post/edit/:id' => 'post#edit'

  get 'post/update/:id' => 'post#update'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root                          'post#root'
  get  '/posts'              => 'post#index'
  get  '/posts/:id'          => 'post#show'
  get  '/posts/:id/comments' => 'post#showcomments'
  get  '/users'              => 'user#all'
  post '/users'              => 'user#create'

end

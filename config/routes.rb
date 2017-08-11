Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  get "/borrow_book" => 'books#borrow_book', as: 'borrow_book'

  root 'books#index'

  get 'qunachi', to: 'misc#qunachi'
end

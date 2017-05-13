Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'misc#youdu'

  get "/borrow_book" => 'misc#borrow_book', as: 'borrow_book'

  get 'qunachi', to: 'misc#qunachi'
end

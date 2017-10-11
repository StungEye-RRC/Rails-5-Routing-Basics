Rails.application.routes.draw do
  root to: 'products#index'

  get 'products', to: 'products#index', as: 'products'
# ^verb  ^URI          ^controller  ^action    ^ refer: products_path

  get 'products/:id', to: 'products#show', as: 'product', id: /\d+/
# ^verb  ^URI          ^controller  ^action    ^ refer: product_path
end

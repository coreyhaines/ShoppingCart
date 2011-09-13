Shoppingcart::Application.routes.draw do
  resources :products

  resources :shopping_carts

  resources :shopping_cart_products

  root :to => "ShoppingCarts#index"
end

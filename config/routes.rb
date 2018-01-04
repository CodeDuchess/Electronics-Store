Rails.application.routes.draw do
  post 'add_to_cart' => 'cart#add_to_cart'

  post 'order_complete' => 'cart#order_complete'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  devise_for :users
    resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


# this code added to support Storefront Controller#
get 'categorical' => 'storefront#items_by_category'

get 'branding' => 'storefront#items_by_brand'

root 'storefront#all_items'
end

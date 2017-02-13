Rails.application.routes.draw do
  get 'stripe_payment/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'stripe_payment#new'
  post 'pay' => 'stripe_payment#pay'
end

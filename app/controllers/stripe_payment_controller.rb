class StripePaymentController < ApplicationController
  def new
  end

  def pay
  	Stripe.api_key = "sk_test_DS84awcw3CvHqhXsY05SDASM"
	 
	token = params[:stripeToken]
	 
	charge = Stripe::Charge.create(
	  :amount => 100000, 	  
	  :currency => "inr",
	  :source => token,
	  :description => "yay! charge created"
	)
  end
end

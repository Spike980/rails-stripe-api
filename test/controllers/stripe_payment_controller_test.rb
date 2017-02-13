require 'test_helper'

class StripePaymentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get stripe_payment_new_url
    assert_response :success
  end

end

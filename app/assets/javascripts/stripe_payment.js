Stripe.setPublishableKey('pk_test_jkDTQGqHlRqei47o2bG68GbH');

function stripeResponseHandler(status, response) {
	if (response.error) {
		$(".payment-errors").text(response.error.message);
	} else {
		var formId = $("#stripe-form");
		var token = response['id'];
		console.log(token);
		formId.append("<input type='hidden' name='stripeToken' value='" + token + "'/>");
		formId.get(0).submit();
	}
}

$(document).ready(function() {
	$('#stripe-form').submit(function(event) {
		$('.submit').attr("disabled", "disabled");

		Stripe.createToken({
			number: $('.credit-number').val(),
			cvc: $('.credit-security').val(),
			exp_month: $('.card-expiry-month').val(),
			exp_year: $('.card-expiry-year').val()
		}, stripeResponseHandler);

		return false;
	});
});



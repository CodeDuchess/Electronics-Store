Rails.configuration.stripe = {

  :publishable_key => "#{ENV["pk_test_sovRqKGX0gS3Wyzayc9ovRj3"]}",

  :secret_key => "#{ENV["sk_test_C8wPlA9FQ4Qbofuzhnko6QNU"]}"

}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

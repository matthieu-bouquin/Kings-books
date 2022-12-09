Rails.configuration.stripe = {
    :publishable_key => "pk_test_51M2bQOEdMYtPZIQq6B236XNATf62pxRoOhnncokvomDTfIqcN5SwW77KW6gOaVc5n6BVTcaUPv3NVJBNlWC8XgZg00pGsFTbjG",
    :secret_key      => "sk_test_51M2bQOEdMYtPZIQqxVytkQRx9Zlh0qxsX9KjUwzz8uRGWWE0LMMR0IiHSgIAmhgwhelwa0NOGEXTV5gdn5Ch8prw00ZzetDaJm"
  }
  Stripe.api_key = Rails.configuration.stripe[":secret_key"]
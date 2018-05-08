if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_bmfi4LTFkvYmOazK6tEAuphx',
    secret_key: 'sk_test_iH7yH3VlyVFQ9K0mq4fX178X'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]

select
    id as payment_id,
    orderid order_id,
    paymentmethod payment_method,
    status,
    -- Strip records their amount in cents so we need to convert to dollar amounts
    (amount / 100) amount,
    created created_at

from raw.stripe.payment
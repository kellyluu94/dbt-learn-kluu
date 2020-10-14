select orders.order_id,
  orders.customer_id,
  sum(payments.amount) amount
from {{ ref('stg_orders') }} orders
left outer join {{ ref('stg_payments') }} payments using (order_id)
where payments.status = 'success'
group by 1,2
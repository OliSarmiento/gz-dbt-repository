SELECT
s.*,
s.revenue - (purchase_price * quantity) AS margin,
p.purchase_price * quantity AS purchase_price
FROM {{ ref("stg_gz_raw_data__raw_gz_sales")}} AS s
left join {{ref("stg_gz_raw_data__raw_gz_product")}} AS p
ON s.products_id = p.products_id
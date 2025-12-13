SELECT 
    product_id, 
    store,
    price
FROM (
  SELECT 
    product_id, 
    UNNEST(ARRAY['store1', 'store2', 'store3']) AS store,
    UNNEST(ARRAY[store1, store2, store3]) AS price
  FROM 
    Products
) AS unpivot
WHERE price IS NOT NULL


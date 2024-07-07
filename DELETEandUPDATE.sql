-- Remove duplicates
DELETE FROM original_dataset
USING original_dataset AS o
WHERE original_dataset.ctid > o.ctid
AND original_dataset.company_name = o.company_name
AND original_dataset.stock_symbol = o.stock_symbol
AND original_dataset.trader_name = o.trader_name
AND original_dataset.quantity = o.quantity
AND original_dataset.price_per_share = o.price_per_share
AND original_dataset.date = o.date
AND original_dataset.tansaction_type = o.tansaction_type;

DELETE FROM synthetic_dataset
USING synthetic_dataset AS s
WHERE synthetic_dataset.ctid > s.ctid
AND synthetic_dataset.company_name = s.company_name
AND synthetic_dataset.stock_symbol = s.stock_symbol
AND synthetic_dataset.trader_name = s.trader_name
AND synthetic_dataset.quantity = s.quantity
AND synthetic_dataset.price_per_share = s.price_per_share
AND synthetic_dataset.date = s.date
AND synthetic_dataset.sensex = s.sensex
AND synthetic_dataset.tansaction_type = s.tansaction_type;

-- Handle missing values (example: fill missing prices with the average price_per_share)
UPDATE original_dataset
SET price_per_share = (SELECT AVG(price_per_share) FROM original_dataset)
WHERE price_per_share IS NULL;

UPDATE synthetic_dataset
SET price_per_share = (SELECT AVG(price_per_share) FROM synthetic_dataset)
WHERE price_per_share IS NULL;

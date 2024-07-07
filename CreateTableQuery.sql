-- Create table for original dataset
CREATE TABLE original_dataset (
	transaction_id TEXT,
	date TEXT,
    company_name TEXT,
    stock_symbol TEXT,
    trader_name TEXT,
	tansaction_type TEXT,
    quantity INTEGER,
    price_per_share REAL,
	total_value REAL,
	is_scam_related BOOLEAN
);

-- Create table for synthetic dataset with Sensex
CREATE TABLE synthetic_dataset (
    transaction_id TEXT,
	date TEXT,
    company_name TEXT,
    stock_symbol TEXT,
    trader_name TEXT,
	tansaction_type TEXT,
    quantity INTEGER,
    price_per_share REAL,
	total_value REAL,
	is_scam_related BOOLEAN,
	sensex INTEGER
);



-- Casa GUGÜ — Initial Schema
-- Run this migration after connecting to Supabase cloud project

-- Products catalog
CREATE TABLE products (
  id          uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name        text NOT NULL,
  category    text NOT NULL CHECK (category IN ('panal', 'toallita', 'paquete')),
  description text,
  price       numeric NOT NULL CHECK (price > 0),
  image_url   text,
  size        text,
  in_stock    boolean DEFAULT true,
  created_at  timestamptz DEFAULT now()
);

-- Orders (items stored as JSONB for MVP simplicity)
CREATE TABLE orders (
  id             uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  customer_name  text NOT NULL,
  address        text NOT NULL,
  phone          text NOT NULL,
  notes          text,
  items          jsonb NOT NULL,
  total          numeric NOT NULL CHECK (total > 0),
  created_at     timestamptz DEFAULT now()
);

-- Enable Row Level Security (public read for products, insert-only for orders)
ALTER TABLE products ENABLE ROW LEVEL SECURITY;
ALTER TABLE orders ENABLE ROW LEVEL SECURITY;

-- Products: anyone can read
CREATE POLICY "products_public_read" ON products
  FOR SELECT USING (true);

-- Orders: anyone can insert (no auth needed for MVP)
CREATE POLICY "orders_public_insert" ON orders
  FOR INSERT WITH CHECK (true);

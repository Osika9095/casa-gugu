import { createClient } from '@supabase/supabase-js'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!

export const supabase = createClient(supabaseUrl, supabaseAnonKey)

export type Product = {
  id: string
  name: string
  category: 'panal' | 'toallita' | 'paquete'
  description: string | null
  price: number
  image_url: string | null
  size: string | null
  in_stock: boolean
  created_at: string
}

export type OrderItem = {
  product_id: string
  name: string
  price: number
  qty: number
  size: string | null
}

export type Order = {
  id: string
  customer_name: string
  address: string
  phone: string
  notes: string | null
  items: OrderItem[]
  total: number
  created_at: string
}

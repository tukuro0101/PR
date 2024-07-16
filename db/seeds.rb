# db/seeds.rb

# Create Provinces
provinces = [
  { name: 'Ontario' },
  { name: 'Quebec' },
  { name: 'British Columbia' },
  # Add other provinces
]

provinces.each do |province|
  Province.create!(province)
end

# Create Tax Types
tax_types = [
  { type_name: 'GST' },
  { type_name: 'PST' },
  { type_name: 'HST' },
]

tax_types.each do |tax_type|
  TaxType.create!(tax_type)
end

# Create Taxes
taxes = [
  { province: Province.find_by(name: 'Ontario'), tax_type: TaxType.find_by(type_name: 'HST'), rate: 13.0 },
  { province: Province.find_by(name: 'Quebec'), tax_type: TaxType.find_by(type_name: 'GST'), rate: 5.0 },
  { province: Province.find_by(name: 'Quebec'), tax_type: TaxType.find_by(type_name: 'PST'), rate: 9.975 },
  # Add other tax rates
]

taxes.each do |tax|
  Tax.create!(tax)
end

# Create Categories
categories = [
  { name: 'Figurines' },
  { name: 'Posters' },
  { name: 'Clothing' },
  { name: 'Accessories' }
]

categories.each do |category|
  Category.create!(category)
end

# Create Products
products = [
  { name: 'Naruto Figurine', description: 'High-quality Naruto figurine.', price: 29.99, stock_quantity: 10, category: Category.find_by(name: 'Figurines') },
  { name: 'One Piece Poster', description: 'Colorful One Piece poster.', price: 9.99, stock_quantity: 20, category: Category.find_by(name: 'Posters') },
  { name: 'Attack on Titan T-shirt', description: 'Comfortable Attack on Titan T-shirt.', price: 19.99, stock_quantity: 15, category: Category.find_by(name: 'Clothing') },
  { name: 'Dragon Ball Keychain', description: 'Cool Dragon Ball keychain.', price: 4.99, stock_quantity: 30, category: Category.find_by(name: 'Accessories') }
]

products.each do |product|
  Product.create!(product)
end

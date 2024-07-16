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

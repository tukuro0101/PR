class Address < ApplicationRecord
  belongs_to :user
  belongs_to :province

  def full_address
    "#{street}, #{city}, #{province.name}, #{postal_code}"
  end
end

class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items
  has_many :reviews, dependent: :destroy
  has_many :cart_items

  validates :name, :description, :price, :stock_quantity, :category_id, presence: true
end

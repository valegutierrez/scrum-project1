class Product < ApplicationRecord
  before_destroy :destroy_this

  has_many :orders
  has_many :users, through: :orders

  def destroy_this 
    self.orders.delete_all
  end
end

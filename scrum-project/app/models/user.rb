class User < ApplicationRecord
  before_destroy :destroy_orders
  after_create :add_products

  has_many :orders
  has_many :products, through: :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def destroy_orders 
    self.orders.delete_all
  end

  def add_products
    User.last.products << Product.all
  end
end

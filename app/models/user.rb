class User < ApplicationRecord
  validates_format_of :password, :with => /\A[A-Za-z0-9]+\z/
  validates :password, length: {in: 8..12}
  validates :phone_number, length: {in:9..12}
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  has_many :orders
end

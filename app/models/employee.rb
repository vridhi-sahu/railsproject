class Employee < ApplicationRecord
  validates :name, :email, :phone, presence: { message: "must be given please" }
  validates :name, :email, :phone, uniqueness: { message: "has been taken already" }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end

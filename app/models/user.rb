class User < ApplicationRecord
  require "csv"
    def self.to_csv

      CSV.generate do |c|
        c << User.column_names
        
        all.each do |user|
          c<< user.attributes.values_at(*User.column_names)
        end
      end
    end

  validates :name, :email, :phone_number, presence: { message: "must be given please" }
  validates :name, :email, :phone_number, uniqueness: { message: "has been taken already" }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
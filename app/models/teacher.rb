class Teacher < ApplicationRecord
    scope :sorted, lambda {order("teachers.name ASC")}
    scope :search_it, ->(s_term) { where("name LIKE ? OR email LIKE ?", "%#{s_term}%", "%#{s_term}%") }
    validates :name, :email, presence: { message: "must be given please" }
    validates :name, :email, uniqueness: { message: "has been taken already" }
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end

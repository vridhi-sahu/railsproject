class Image < ApplicationRecord
validates :picture_file_name, presence: true  
    has_attached_file :picture, styles: {large: "500x500>", medium: "300x300>", thumb: "150x150#"}
    validates_attachment_content_type :picture, content_type: %r{\Aimage\/.*\z}
    validates_attachment_presence :picture
end

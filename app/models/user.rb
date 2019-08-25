class User < ApplicationRecord
    def self.to_csv 
      CSV.generate do |c|
        c << User.column_names
        all.each do |user|
          c<< user.attributes.values_at(*User.column_names)
        end
      end
    end
end
class AddValidationOnTeachers < ActiveRecord::Migration[5.2]
  def change
    change_column :teachers, :name, :string, null: false
    change_column :teachers, :email, :string, null: false
    add_index :teachers, :email, unique: true
  end
end

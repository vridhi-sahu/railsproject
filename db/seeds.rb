# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
  User.create do |u|
    u.name = Faker::Name.name
    u.email = Faker::Internet.email
    u.phone_number = Faker::PhoneNumber.cell_phone
  end
end

50.times do
  Employee.create do |emp|
    emp.name = Faker::Name.name
    emp.email = Faker::Internet.email
    emp.phone = Faker::PhoneNumber.cell_phone
  end
end
50.times do
  Student.create do |stu|
    stu.name = Faker::Name.name
    stu.email = Faker::Internet.email
    stu.phone = Faker::PhoneNumber.cell_phone
  end
end
50.times do
  Teacher.create do |tea|
    tea.name = Faker::Name.name
    tea.email = Faker::Internet.email
  end
end
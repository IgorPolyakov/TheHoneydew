# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Inspector.destroy_all
# Inspector.create(name: 'Петров Олег', position: 'Младший инспектор')
10.times do
    Inspector.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, position: 'Старший инспектор')
    Person.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    Organization.create(name: Faker::Company.name, boss: (Faker::Name.first_name + ' ' + Faker::Name.last_name).to_s)
end
# Faker::Name.first_name
# Faker::Name.last_name

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
# 3.times do
#     # Inspector.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, middle_name: Faker::Name.last_name, position: 'Старший инспектор')
#     # Person.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
#
#     # Organization.create(company_name: Faker::Company.name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
# end
# Faker::Name.first_name
# Faker::Name.last_name
in_1 = Inspector.create(first_name: 'Igor', last_name: 'Polyakov' + rand().to_s, middle_name: 'Faker::Name.last_name', position: 'Старший инспектор')
# in_2 = Person.create(first_name: 'Igor', last_name: 'Polyakov')
in_2 = Inspector.create(first_name: 'SuperIgor', last_name: 'Polyakov' + rand().to_s, middle_name: 'Faker::Name.last_name', position: 'Старший инспектор')
Supervisor.create(inspector_id: in_1.inspector_id)
Visor.create(inspector_id: in_2.inspector_id)

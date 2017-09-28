# frozen_string_literal: true

require 'ffaker'
Organization.destroy_all
Person.destroy_all
Report.destroy_all
Check.destroy_all
Inspector.destroy_all
User.destroy_all
def create_inspector(last, first, middle, position)
  Inspector.create(last_name: last, first_name: first, middle_name: middle, position: position)
end

def create_organization
  company = Organization.new(company_name: FFaker::Company.name, position: FFaker::Job.title)
  company.person = Person.find_by(id: rand(Person.first.id..Person.last.id))
  company.save
end

def create_person
  Person.create!(last_name: FFaker::NameRU.last_name, first_name: FFaker::NameRU.first_name, middle_name: FFaker::NameRU.patronymic)
end

def create_check
  time = Time.now
  check = Check.new(amount: rand(1..10), checks_number: FFaker::Product.model, check_finish: time + 10.days, reason: 'nill', category: 'nill', violation: 'nill', response_measure: 'nill', direction_status: 'nill', case_number: rand(100..999), number_of_volumes: rand(1..12), for_office: true, executive: 'Anonimus', controll: rand > 0.5, direction_author: 'Anonimus', direction_where: '/dev/null', check_start: time, check_remark_destroy: time + 20.days)
  check.inspector = Inspector.find_by(id: rand(Inspector.first.id..Inspector.last.id))
  check.organizations << Organization.find_by(id: rand(Organization.first.id..Organization.last.id))
  check.people << Person.find_by(id: rand(Person.first.id..Person.last.id))
  check.save
end
# data from URL:https://kru.tomsk.gov.ru/phonebook/department
create_inspector('Аксиненко', 'Сергей', 'Владимирович', 'Председатель комитета - заместитель начальника управления')
create_inspector('Маляр', 'Павел', 'Иванович', 'Председатель комитета')
create_inspector('Ульянов', 'Павел', 'Владимирович', 'Начальник отдела')
create_inspector('Шабанова', 'Ольга', 'Ивановна', 'И.о. начальника отдела')
create_inspector('Веткин', 'Сергей', 'Алексеевич', 'Главный специалист')
create_inspector('Гуляев', 'Алексей', 'Игоревич', 'Консультант')
create_inspector('Гусева', 'Ксения', 'Анатольевна', 'Главный специалист')
create_inspector('Соболева', 'Вера', 'Анатольевна', 'Консультант')
create_inspector('Бугаева', 'Татьяна', 'Геннадьевна', 'Главный специалист')
create_inspector('Золотухин', 'Антон', 'Игоревич', 'Заместитель председателя комитета')
create_inspector('Семиколенов', 'Игорь', 'Владимирович', 'Консультант')
create_inspector('Сусоев', 'Владимир', 'Михайлович', 'Консультант')
create_inspector('Горев', 'Дмитрий', 'Васильевич', 'Главный специалист')
create_inspector('Панова', 'Евгения', 'Николаевна', 'Главный специалист')
create_inspector('Семин', 'Станислав', 'Олегович', 'Консультант')
create_inspector('Удут-Пантелиади', 'Ирина', 'Викторовна', 'Консультант')
create_inspector('Панова', 'Татьяна', 'Владимировна', 'Консультант')
create_inspector('Пономарева', 'Алия', 'Александровна', 'Консультант')
create_inspector('Панькова', 'Олеся', 'Васильвена', 'Консультант')
create_inspector('Трубина', 'Полина', 'Ивановна', 'Консультант')
create_inspector('Думина', 'Юлия', 'Анатольевна', 'Консультант')

User.create(login: 'keva', password: '123456', is_admin: true)
User.create(login: 'user', password: '123456')

100.times do
  create_person
end

100.times do
  create_organization
end

100.times do
  create_check
end

require 'faker'
Inspector.destroy_all
#Role.destroy_all
#data from URL:https://kru.tomsk.gov.ru/phonebook/department
Inspector.create(last_name: 'Аксиненко', first_name: 'Сергей', middle_name: 'Владимирович', position: 'Председатель комитета - заместитель начальника управления')
Inspector.create(last_name: 'Маляр', first_name: 'Павел', middle_name: 'Иванович', position: 'Председатель комитета')
Inspector.create(last_name: 'Ульянов', first_name: 'Павел', middle_name: 'Владимирович', position: 'Начальник отдела')
Inspector.create(last_name: 'Шабанова', first_name: 'Ольга', middle_name: 'Ивановна', position: 'И.о. начальника отдела')
Inspector.create(last_name: 'Веткин', first_name: 'Сергей', middle_name: 'Алексеевич', position: 'Главный специалист')
Inspector.create(last_name: 'Гуляев', first_name: 'Алексей', middle_name: 'Игоревич', position: 'Консультант')
Inspector.create(last_name: 'Гусева', first_name: 'Ксения', middle_name: 'Анатольевна', position: 'Главный специалист')
Inspector.create(last_name: 'Соболева', first_name: 'Вера', middle_name: 'Анатольевна', position: 'Консультант')
Inspector.create(last_name: 'Бугаева', first_name: 'Татьяна', middle_name: 'Геннадьевна', position: 'Главный специалист')
Inspector.create(last_name: 'Золотухин', first_name: 'Антон', middle_name: 'Игоревич', position: 'Заместитель председателя комитета')
Inspector.create(last_name: 'Семиколенов', first_name: 'Игорь', middle_name: 'Владимирович', position: 'Консультант')
Inspector.create(last_name: 'Сусоев', first_name: 'Владимир', middle_name: 'Михайлович', position: 'Консультант')
Inspector.create(last_name: 'Горев', first_name: 'Дмитрий', middle_name: 'Васильевич', position: 'Главный специалист')
Inspector.create(last_name: 'Панова', first_name: 'Евгения', middle_name: 'Николаевна', position: 'Главный специалист')
Inspector.create(last_name: 'Семин', first_name: 'Станислав', middle_name: 'Олегович', position: 'Консультант')
Inspector.create(last_name: 'Удут-Пантелиади',first_name: 'Ирина', middle_name: 'Викторовна', position: 'Консультант')
Inspector.create(last_name: 'Панова', first_name: 'Татьяна', middle_name: 'Владимировна', position: 'Консультант')
Inspector.create(last_name: 'Пономарева', first_name: 'Алия', middle_name: 'Александровна', position: 'Консультант')
Inspector.create(last_name: 'Панькова', first_name: 'Олеся', middle_name: 'Васильвена', position: 'Консультант')
Inspector.create(last_name: 'Трубина', first_name: 'Полина', middle_name: 'Ивановна', position: 'Консультант')
Inspector.create(last_name: 'Думина', first_name: 'Юлия', middle_name: 'Анатольевна', position: 'Консультант')


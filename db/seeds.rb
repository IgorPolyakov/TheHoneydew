# frozen_string_literal: true

[
  {
    login: 'keva',
    password: 'KeV@1SLifE',
    is_admin: true,
  },
  {
    login: 'nikel',
    password: '123456789',
    is_admin: true,
  },
  {
    login: 'user',
    password: 'Mu$t@Ng_V0',
    is_admin: false
  }
].each do |name|
  next if User.exists?(login: name[:login])
  User.create(
    login: name[:login],
    password: name[:password],
    is_admin: name[:is_admin]
  )
end

[
  {
    last_name: 'Аксиненко',
    first_name: 'Сергей',
    middle_name: 'Владимирович',
    position: 'Председатель комитета - заместитель начальника управления'
  },
  {
    last_name: 'Маляр',
    first_name: 'Павел',
    middle_name: 'Иванович',
    position: 'Председатель комитета'
  },
  {
    last_name: 'Ульянов',
    first_name: 'Павел',
    middle_name: 'Владимирович',
    position: 'Начальник отдела'
  },
  {
    last_name: 'Шабанова',
    first_name: 'Ольга',
    middle_name: 'Ивановна',
    position: 'И.о. начальника отдела'
  },
  {
    last_name: 'Веткин',
    first_name: 'Сергей',
    middle_name: 'Алексеевич',
    position: 'Главный специалист'
  },
  {
    last_name: 'Гуляев',
    first_name: 'Алексей',
    middle_name: 'Игоревич',
    position: 'Консультант'
  },
  {
    last_name: 'Гусева',
    first_name: 'Ксения',
    middle_name: 'Анатольевна',
    position: 'Главный специалист'
  },
  {
    last_name: 'Соболева',
    first_name: 'Вера',
    middle_name: 'Анатольевна',
    position: 'Консультант'
  },
  {
    last_name: 'Бугаева',
    first_name: 'Татьяна',
    middle_name: 'Геннадьевна',
    position: 'Главный специалист'
  },
  {
    last_name: 'Золотухин',
    first_name: 'Антон',
    middle_name: 'Игоревич',
    position: 'Заместитель председателя комитета'
  },
  {
    last_name: 'Семиколенов',
    first_name: 'Игорь',
    middle_name: 'Владимирович',
    position: 'Консультант'
  },
  {
    last_name: 'Сусоев',
    first_name: 'Владимир',
    middle_name: 'Михайлович',
    position: 'Консультант'
  },
  {
    last_name: 'Горев',
    first_name: 'Дмитрий',
    middle_name: 'Васильевич',
    position: 'Главный специалист'
  },
  {
    last_name: 'Панова',
    first_name: 'Евгения',
    middle_name: 'Николаевна',
    position: 'Главный специалист'
  },
  {
    last_name: 'Семин',
    first_name: 'Станислав',
    middle_name: 'Олегович',
    position: 'Консультант'
  },
  {
    last_name: 'Удут-Пантелиади',
    first_name: 'Ирина',
    middle_name: 'Викторовна',
    position: 'Консультант'
  },
  {
    last_name: 'Панова',
    first_name: 'Татьяна',
    middle_name: 'Владимировна',
    position: 'Консультант'
  },
  {
    last_name: 'Пономарева',
    first_name: 'Алия',
    middle_name: 'Александровна',
    position: 'Консультант'
  },
  {
    last_name: 'Панькова',
    first_name: 'Олеся',
    middle_name: 'Васильвена',
    position: 'Консультант'
  },
  {
    last_name: 'Трубина',
    first_name: 'Полина',
    middle_name: 'Ивановна',
    position: 'Консультант'
  },
  {
    last_name: 'Думина',
    first_name: 'Юлия',
    middle_name: 'Анатольевна',
    position: 'Консультант'
  }
].each do |info|
  next if Inspector.exists?(last_name: info[:last_name])
  Inspector.create(
    last_name: info[:last_name],
    first_name: info[:first_name],
    middle_name: info[:middle_name],
    position: info[:position]
  )
end

[
  'эффективность деятельности',
  'сохранение и использование имущества',
  'государственные/муниципальные услуги',
  'контрактная система',
  'противодействие коррупции',
  'для обращений :: нецелевое использование бюджетных средств',
  'для обращений :: оспаривание действий должностных лиц',
  'другие'
].each do |name|
  next if Category.exists?(name: name)
  Category.create(name: name)
end

[
  'трудовое законодательство',
  'законодательство о государственных и муниципальных услугах',
  'законодательство о контрактной системе',
  'бюджетное законодательство',
  'ведомственное законодательство',
  'другие'
].each do |name|
  next if Violation.exists?(name: name)
  Violation.create(name: name)
end

[
  'расторжение трудовых договоров',
  'дисциплинарные взыскания',
  'возвращение денежных средств в бюджет',
  'административные наказания :: прокуратура',
  'административные наказания :: ИОГВ',
  'административные наказания :: контрольный комитет КРУ',
  'факты не подтвердились',
  'другие'
].each do |name|
  next if ResponseMeasure.exists?(name: name)
  ResponseMeasure.create(name: name)
end

[
  'Для сведения',
  'Для принятия мер реагирования',
  'Для устранения нарушений'
].each do |name|
  next if DirectionStatus.exists?(name: name)
  DirectionStatus.create(name: name)
end

[
  'план работы КК и ОАР',
  'поручение ГТО',
  'поручение ЗГТО',
  'обращение заявителя/организации',
  'другое'
].each do |name|
  next if Reason.exists?(name: name)
  Reason.create(name: name)
end

[
  'снято с контроля',
  'переведено на внутренний контроль'
].each do |name|
  next if Result.exists?(name: name)
  Result.create(name: name)
end

# frozen_string_literal: true

User.create(login: 'keva', password: 'KeV@1SLifE', is_admin: true)
User.create(login: 'user', password: 'Mu$t@Ng_V0')

Category.create(name: 'эффективность деятельности')
Category.create(name: 'сохранение и использование имущества')
Category.create(name: 'государственные/муниципальные услуги')
Category.create(name: 'контрактная система')
Category.create(name: 'противодействие коррупции')
Category.create(name: 'для обращений :: нецелевое использование бюджетных средств')
Category.create(name: 'для обращений :: оспаривание действий должностных лиц')
Category.create(name: 'другие')

Violation.create(name: 'трудовое законодательство')
Violation.create(name: 'законодательство о государственных и муниципальных услугах')
Violation.create(name: 'законодательство о контрактной системе')
Violation.create(name: 'бюджетное законодательство')
Violation.create(name: 'ведомственное законодательство')
Violation.create(name: 'другие')

ResponseMeasure.create(name: 'расторжение трудовых договоров')
ResponseMeasure.create(name: 'дисциплинарные взыскания')
ResponseMeasure.create(name: 'возвращение денежных средств в бюджет')
ResponseMeasure.create(name: 'административные наказания :: прокуратура')
ResponseMeasure.create(name: 'административные наказания :: ИОГВ')
ResponseMeasure.create(name: 'административные наказания :: контрольный комитет КРУ')
ResponseMeasure.create(name: 'факты не подтвердились')
ResponseMeasure.create(name: 'другие')

DirectionStatus.create(name: 'Для сведения')
DirectionStatus.create(name: 'Для принятия мер реагирования')
DirectionStatus.create(name: 'Для устранения нарушений')

Reason.create(name: 'план работы КК и ОАР')
Reason.create(name: 'поручение ГТО')
Reason.create(name: 'поручение ЗГТО')
Reason.create(name: 'обращение заявителя/организации')
Reason.create(name: 'другое')

Result.create(name: 'снято с контроля')
Result.create(name: 'переведено на внутренний контроль')

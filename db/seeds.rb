# frozen_string_literal: true

Organization.destroy_all
Person.destroy_all
Report.destroy_all
Check.destroy_all
Inspector.destroy_all
User.destroy_all

User.create(login: 'keva', password: 'KeV@1SLifE', is_admin: true)
User.create(login: 'user', password: 'Mu$t@Ng_V0')

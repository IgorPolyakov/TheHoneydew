# frozen_string_literal: true

require_relative '../support/login_helper'
describe 'Checking all urls' do
  let!(:user) { build(:admin_jess, login: 'alex@mail.ru', password: 'password') }
  # let!(:user) { create(:inspector, login: 'alex@mail.ru', password: 'password') }
  before(:each) do
    login('alex@mail.ru', 'password')
  end
  it 'Dashboard' do
    visit root_path
    expect(page).to have_content 'АИС КРУ'
  end
  it 'Проверки' do
    click_link 'Проверки'
    expect(page).to have_content 'Проверки'
  end
  it 'Контрольные дела' do
    click_link 'Контрольные дела'
    expect(page).to have_content 'Контрольные дела'
  end
  it 'Генератор отчетов' do
    click_link 'Генератор отчетов'
    expect(page).to have_content 'Генератор отчетов'
  end
  it 'Проверяющие' do
    click_link 'Проверяющие'
    expect(page).to have_content 'Проверяющие'
  end
  it 'Должностные лица' do
    click_link 'Должностные лица'
    expect(page).to have_content 'Должностные лица'
  end
  it 'Организация' do
    click_link 'Организация'
    expect(page).to have_content 'Организация'
  end
end

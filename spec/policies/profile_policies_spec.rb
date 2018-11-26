require 'rails_helper'

describe ProfilePolicy do 
 subject ( described_class )


 context "Для посетителя" do
 	let(:member) {nil}
 	let(:profile) {FactoryGirl.create(:profile)}

 	permissions :index?, :show?, :new?, :edit?, :create?, :update?, :destroy? do
 		it "Не допустимо для не зарегистрированного пользователя!" do
 			expect (subject).not_to permit(member, profile )
 		end
 	end
 end

 context "Для члена просматривающего других пользователей или создающего профиль" do
 	let(:profile) {FactoryGirl.create(:profile)}
 	let(:member) {FactoryGirl.create(:member)} 	

 	permissions :index?, :show?, :new?, :create? do
 		it "Доступ разрешен" do
 			expect (subject).to permit(member, profile )
 		end
 	end

	permissions :edit?, :update?, :destroy? do
 		it "Не допустимо для пользователя чьим профиль не является!" do
 			expect (subject).not_to permit(member, profile )
 		end
 	end
 end

 context "Для члена редактирующего собственный профиль" do
 	let(:member) {FactoryGirl.create(:member)} 	

	permissions :edit?, :update?, :destroy? do
 		it "Дает доступ если профиль принадлежит члену" do
 			expect (subject).to permit(member, Profile.create!(member_id: member_id) )
 		end
 	end
 end
end
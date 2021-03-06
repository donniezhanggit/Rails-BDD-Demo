require 'rails_helper'

RSpec.describe Contact, type: :model do

	context 'validate model attributes' do
		it {is_expected.to validate_presence_of(:name)}
		it {is_expected.to validate_presence_of(:address)}
		it {is_expected.to validate_presence_of(:phone_number)}
		it {is_expected.to validate_length_of(:phone_number).is_at_least(10)}
	end

	context 'validate factory bot implementation' do
		before {@contact = create(:contact)}

		it "is a valid user" do
			expect(@contact).to be_valid
		end
	end

end
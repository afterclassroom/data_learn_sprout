class Schools < ActiveRecord::Base
	require 'faker'

	def sef.create_school
		school = School.create!({
			name: { Faker::Name.name },
			number: { Faker::Number.number(10) },
			address_street: { Faker::Address.street_address },
			address_city: { Faker::Address.city},
			address_state: { Faker::Address.state },
			address_zip: { Faker::Address.zip },
			phone: { Faker::PhoneNumber.phone_number }
			})
		#return school
	end
end

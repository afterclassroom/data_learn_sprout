class Student < ActiveRecord::Base
	require 'faker'

	belongs_to :school

	def self.create_student
		gender_array = ["male", "female"]
		lunch_status_array = ["yes", "no"]

		Student.create!({
			first_name:  Faker::Name.first_name ,
			middle_name: Faker::Name.suffix  ,
			last_name: Faker::Name.last_name,
			email: Faker::Internet.safe_email,
			gender: gender_array.shuffle.sample,
			ethnicity: Faker::Address.city,
			lunch_status: lunch_status_array.shuffle.sample,
			grade: Faker::Number.digit,
			entry_date: Faker::Date.backward(14),
			exit_date: Faker::Date.forward(23),
			birthday: Faker::Date.forward(23),
			phone:  Faker::PhoneNumber.phone_number,
			# school_id: rand(1..10),
			school_id: 1,
			address_state: Faker::Address.state,
			address_city: Faker::Address.city ,
			address_street: Faker::Address.street_address,
			address_zip: Faker::Address.zip,
			number: Faker::Number.number(3)
			})
	end

	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			#csv << column_names
			csv << ["id", "name", "email", "phone", "address"]
			all.each do |product|
				#csv << product.attributes.values_at(*column_names)
				csv << ["#{product.id}", "#{product.first_name} #{product.middle_name} #{product.last_name}", "#{product.email}", "#{product.phone}", "#{product.address_street}, #{product.address_city}, #{product.address_state}  #{product.address_zip}"]
			end
		end
	end
end

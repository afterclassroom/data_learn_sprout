class School < ActiveRecord::Base
	require 'faker'

	has_many :teachers, :dependent => :destroy
	has_many :students, :dependent => :destroy
	has_many :courses, :dependent => :destroy
	has_many :terms, :dependent => :destroy
	has_many :sections, :dependent => :destroy

	def self.create_school
		School.create!({
			name:  Faker::Name.name ,
			number: Faker::Number.number(3) ,
			address_street: Faker::Address.street_address,
			address_city: Faker::Address.city,
			address_state: Faker::Address.state,
			address_zip: Faker::Address.zip,
			phone: Faker::PhoneNumber.phone_number
			})
	end

	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |product|
				csv << product.attributes.values_at(*column_names)
			end
		end
	end
end

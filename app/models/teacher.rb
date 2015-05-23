class Teacher < ActiveRecord::Base
	require 'faker'

	belongs_to :school
	has_many :sections, :dependent => :destroy

	def self.create_teacher
		Teacher.create!({
			first_name:  Faker::Name.first_name ,
			middle_name: Faker::Name.suffix  ,
			last_name: Faker::Name.last_name,
			email: Faker::Internet.safe_email,
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
				csv << ["#{product.id}", "#{product.first_name} #{product.middle_name} #{product.last_name}", "#{product.email}", "", "#{product.address_street}, #{product.address_city}, #{product.address_state}  #{product.address_zip}"]
			end
		end
	end
end

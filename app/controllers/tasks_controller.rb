class TasksController < ApplicationController
	require 'database_cleaner'

	def index
	end

	def cleandb
		#clean database
		DatabaseCleaner.strategy = :truncation
		# then, whenever you need to clean the DB
		DatabaseCleaner.clean

		redirect_to "/"
	end

	def makedata

		#add 100 schools
		(1..100).each do |i|
			School.create_school
		end

		#add 200 teachers
		(1..200).each do |i|
			Teacher.create_teacher
		end

		#add 1000 students
		(1..1000).each do |i|
			Student.create_student
		end

		redirect_to "/"
	end

	def school_csv
		@school = School.all

		respond_to do |format|
			format.html
			format.csv { send_data @school.to_csv }
		end
	end

	def teacher_csv
		@teacher = Teacher.all

		respond_to do |format|
			format.html
			format.csv { send_data @teacher.to_csv }
		end
	end

	def student_csv
		@student = Student.all

		respond_to do |format|
			format.html
			format.csv { send_data @student.to_csv }
		end
	end


end
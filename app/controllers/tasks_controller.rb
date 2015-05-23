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
		# (1..100).each do |i|
		# 	School.create_school
		# end
		School.create_school

		#add 10 teachers
		(1..10).each do |i|
			Teacher.create_teacher
		end

		#add 20 students
		(1..20).each do |i|
			Student.create_student
		end

		#add 10 Term
		(1..10).each do |i|
			Term.create_term
		end

		#add 10 course
		(1..10).each do |i|
			Course.create_course
		end

		#add 10 section
		(1..10).each do |i|
			Section.create_section
		end

		#add 10 course_grade
		(1..10).each do |i|
			CourseGrade.create_course_grade
		end

		#add 10 Roster
		(1..10).each do |i|
			Roster.create_roster
		end

		redirect_to "/"
	end

	def export_schools
		@school = School.all

		respond_to do |format|
			format.html
			format.csv { send_data @school.to_csv }
		end
	end

	def export_teachers
		#@teacher = Teacher.where(:id =>1)
		@teacher = Teacher.all

		respond_to do |format|
			format.html
			format.csv { send_data @teacher.to_csv }
		end
	end

	def export_students
		@student = Student.all

		respond_to do |format|
			format.html
			format.csv { send_data @student.to_csv }
		end
	end

	def export_courses
		@course = Section.includes(:teacher, :course, :term)

		respond_to do |format|
			format.html
			format.csv { send_data @course.to_csv }
		end
	end

	def export_rosters
		@roster = Roster.includes(:section)

		respond_to do |format|
			format.html
			format.csv { send_data @roster.to_csv }
		end
	end


end
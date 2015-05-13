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

	    # school = School.create_school
	    # puts("=======")
	    # puts(school.id)
	    # puts("=======")

	    school = School.all

		redirect_to "/"
	end




end
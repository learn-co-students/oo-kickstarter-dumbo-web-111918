require "pry"

class Backer

	@@all = []

	attr_accessor :backed_projects
	attr_reader :name

	def initialize(name)
		@name = name
		@backed_projects = []
		@@all << self
	end

	def self.all
		@@all
	end

	def back_project(project)
		@backed_projects << project
		project.backers << self
	end


end

logan = Backer.new("logan")

puts "done"
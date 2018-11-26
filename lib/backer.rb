require 'pry'
class Backer
	attr_accessor :backed_projects
  attr_reader :name
	def initialize(name)
		@name = name
		@backed_projects =[]

	  #when a Backer instance is initialized, 
	  #it should be initialized with a @backed_projects variable set to an empty array. 
	  #Instances of the Backer class should have an attr_accessor for backed projects 
	  #so that projects can be added to a backer's list and so that the backer can report 
	  #on the projects they back.
	end	

	def back_project(project)
		#@project = project
		project.add_backer(self) # this is adding backer also to the project class's array
		# i had to make a attr accessor for the project
		@backed_projects << project
    
		# When a backer has added a project to its list of backed projects, 
    # that project should also add the backer to its list of backers. 
    # Refer back to the Code Along about Collaborating Objects.
	end	

end
#binding.pry

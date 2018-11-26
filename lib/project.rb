require 'pry'
class Project
  attr_accessor :backers 
	attr_reader :title

  def initialize(title)
	  @title = title
	  @backers =[]

    # When a Project instance is initialized, it should be initialized with a 
    # @backers variable set to an empty array. Instances of the Project class should have 
    # an attr_accessor for backers so that projects can add backers to their list of 
    # backers and report on the backers who support them.
   end
  def add_backer(backer)
  	#@backer = backer
  	@backers << backer
    #backer.back_project(self)
    backer.backed_projects << self

  # When a backer has added a project to its list of backed projects, 
  # that project should also add the backer to its list of backers. 
  # Refer back to the Code Along about Collaborating Objects.
  end 


end	
#binding.pry
require 'pry'

require_relative 'lib/backer.rb'
require_relative 'lib/project.rb'

steve = Backer.new("steve")
swagu = Project.new("How to Increase Swag")

binding.pry

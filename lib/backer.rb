class Backer

  attr_reader :name
  attr_accessor :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
    @backed_projects << title
    title.backers << self  # could use the actual functions for adding, but it can create an endless loop..... if used for both
  end

end

class Project
  attr_accessor :backers, :title
  def initialize(title)
    @title = title
    @backers = []
  end
  def add_backer(backer)
    self.push_backer(backer)
    backer.push_project(self)
  end
  def push_backer(backer)
    @backers << backer
  end
end

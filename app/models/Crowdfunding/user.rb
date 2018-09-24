class User
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def self.highest_pledge
    Pledge.all.sort_by {|pledge| pledge.amount}
  end

  def multi_pledge
    user_and_pledges = []
    self.all.each_with_index do |user|
      user_and_pledges[index] ||= [user, 0]
      Pledge.each do |pledge|
        user_and_pledges[index][1] += 1 if pledge.user == user
      end
    end
    user_and_pledges.sort_by {|user_and_pledges| user_and_pledges[1]}.max
  end

  def initialize(name)
    @name = name
  end

  def create_project(name)
    Project.new(name).creator = self
  end

  def back_project(project, amount)
    project.goal += amount
    Pledge.new(self, project, amount)
  end


end

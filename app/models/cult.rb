class Cult
  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan

    @@all << self
  end

  def bloodOaths
    #returns an Array of all BloodOaths associated with this cult
    BloodOath.all.select do |bloodOath|
      bloodOath if bloodOath.cult == self
    end
  end

  def cult_population
    #returns a Fixnum that is the number of followers in this cult
    #note: this method assumes one bloodoath per follower per cult
    bloodOaths.length
  end

  def recruit_follower(follower)
    # takes in an argument of a Follower instance and adds them to this cult's list of followers
    BloodOath.new(self, follower)
  end

  def self.find_by_name(name)
    #takes a String argument that is a name and returns a Cult instance whose name matches that argument
    self.all.find do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    #takes a String argument that is a location and returns an Array of cults that are in that location
    self.all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year
    #takes a Fixnum argument that is a year and returns all of the cults founded in that year

  end

  def self.all
    @@all
  end
end

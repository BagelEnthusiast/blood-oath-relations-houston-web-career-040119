class Follower
  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

  def bloodOaths
    #returns an Array of all BloodOaths associated with this follower
    BloodOaths.all.select do |bloodOath|
      bloodOath if bloodOath.follower == self
    end
  end

  def cults
    #returns an Array of this follower's cults
    self.bloodOaths.map do |bloodOath|
      bloodOath.cult
    end
  end

  def join_cult(cult)
    #takes in an argument of a Cult instance and adds this follower to the cult's list of followers
    BloodOath.new(cult, self)
  end

  def self.of_a_certain_age(age)
    #takes a Fixnum argument that is an age and returns an Array of followers who are the given age or older
    self.all.select do |follower|
      follower if follower.age == age
    end
  end

  def self.all
    @@all
  end
end

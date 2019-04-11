require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#cults
blood_cult = Cult.new("Blood Cult", "Houston", 2019, "Learn, love, make blood sacrifices")
cthulu_cult = Cult.new("Cthulu Cult", "Sugarland", 2018, "My life for Cthulu!")


#followers
shawn = Follower.new("Shawn", 31, "Pizza is great")
minh = Follower.new("Minh", 28, "VSCode 4 Life")
kevin = Follower.new("Kevin", 24, "I <3 soccer")


#recruited followers
blood_cult.recruit_follower(shawn)
blood_cult.recruit_follower(minh)

#Joined cult
kevin.join_cult(cthulu_cult)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits

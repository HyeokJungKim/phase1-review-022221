# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob_var = Student.new("Spongebob")
patrick = Student.new("Patrick")

eric = Tutor.new("Eric")
sean = Tutor.new("Sean")

c1 = Course.new(spongebob_var, eric, "Underwater Driving")
c2 = Course.new(spongebob_var, eric, "Over land Driving")
c3 = Course.new(patrick, eric, "Sky Driving")

c4 = Course.new(patrick, sean, "Burger Flipping")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

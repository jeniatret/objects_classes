#created class person that is shared 
class Person 
	def initialize(name)
		@name = name 
	end

	def greeting
	"Hi my name is #{@name}"
	end

end


class Student < Person
def learn 
	 "I get it!"
	end
end

class Instructor < Person 
def teach
	 "Everythihg in Ruby is an Object"
	
end
	end 


student = Student.new("Christina")
puts student.greeting

student2 = Student.new("jenia")
puts student2.greeting

instructor = Instructor.new("Chris")
puts instructor.greeting

puts student.learn
puts instructor.teach 


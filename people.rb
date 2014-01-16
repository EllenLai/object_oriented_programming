

class Person
	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi my name is #{name}"
	end
end


class Student
	def learn
		puts "I get it!"
	end
end


class Instructor
	def teach
		puts "Everything in Ruby is an Object"
	end
end

ellen = Person.new("Ellen")


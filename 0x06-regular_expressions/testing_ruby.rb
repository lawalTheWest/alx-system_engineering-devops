#!/usr/bin/env ruby
# printing the "Welcome message"
puts "Welcome to the Basic Ruby Program!"

# declaring Variables
name = "Lawal"
age = 1000

# printing by formatting Output
puts "My name is #{name} and I am below #{age} years old."

# (Input) taking user input
print "Enter your name: "
user_name = gets.chomp

# (Conditional statement)
if user_name == name
  puts "We have the same name!"
else
  puts "Nice to meet you, #{user_name}!"
end

# (Loop)
puts "Counting from 1 to 5:"
(1..5).each do |number|
  puts number
end

# (Arrays)
fruits = ["apple", "banana", "cherry"]

puts "My favorite fruits are:"
fruits.each do |fruit|
  puts fruit
end

# (Methods)
def greet(name)
  puts "Hello, #{name}!"
end

greet("Alice")

# Classes (basic example)
class Dog
  attr_accessor :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def bark
    puts "Woof, woof!"
  end
end

# Create a Dog object
dog = Dog.new("Buddy", "Golden Retriever")

# Access object properties
puts "My dog's name is #{dog.name} and he is a #{dog.breed}."

# Call a method
dog.bark

# Goodbye message
puts "Thanks for going through these Basic Ruby Program!"


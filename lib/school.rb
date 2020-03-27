# code here!

class School
  
  attr_accessor :roster, :name 
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade] == nil 
    @roster[grade] << name
  end 
  
  def grade(grade_number)
    @roster[grade_number]
  end 
    
  def sort
    dict = {} 
    @roster.each do |key, value|
      dict[key] = value.sort    
    end 
    dict.sort
  end 
  
  #   def sort
  #   sorted = {}
  #   roster.each do |grade, students|
  #     sorted[grade] = students.sort
  #   end
  #   sorted
  # end
end 
require "pry"

#Create a model for a school by defining a class School
class School
    
    attr_accessor :name, :roster

    #Initialize with a school name & a roster
    def initialize(name)
        @name = name
        @roster = { }
    end
    
    #Instance method adds a student to the roster, sorted by grade
    def add_student(name, grade)
         @roster[grade] ||= []
         @roster[grade] << name
    end
    
    #Instance method returns all students in a given grade
    def grade(student_grade)
        roster[student_grade]
    end
    
    #Instance method sorts the students in each grade by alphabetical order
    def sort
        sort_students = {}
        roster.each do |grade, students|
        sort_students[grade] = students.sort
    end
        sort_students
    end

end
class School
    
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = { }
    end


    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade].push(name)
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.reduce({}){|memo, (grade, students_array)| 
        memo[grade] = students_array.sort
        memo
        }
    end
    
end
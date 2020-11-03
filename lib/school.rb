# code here!

class School

    attr_accessor :roster 

    def initialize(roster)
        @roster = {}
    end

    def add_student(student_name, grade)
        # this is a more efficient way to write the conditional statement below 
        # roster[grade] ||= []
        # roster[grade] << student_name
    
        if roster.key?(grade)
            roster[grade] << student_name
        else 
            roster[grade] = [] 
            roster[grade] << student_name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted 
    end


    
end
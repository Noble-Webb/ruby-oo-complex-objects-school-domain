class School
    attr_accessor :school, :roster  #allows info to be altered and read
    attr_reader 
    

    def initialize(name) #each instance of school has a name and is entered into a hash named roster
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade) #takes in the arguements of students name and grade returns a hash with a key that points a value of an array.
        roster[grade] ||= [] #sets the new key 'grade' equal to an empty hash 
        roster[grade] << student_name #pushes the value 'student_name' into the array
    end

    def grade(grade) #retrieves students from a particular grade
        roster[grade]
    end

    def sort #enumerates through the roster of students and returns an alphabetically sorted hash of students by grade
        sorted = {} #new hash to be called later
        roster.each do |grade, students| #emnumerates through roster and makes a key 'grade' & value 'students'
            sorted[grade] = students.sort #sets the key 'grade' equal to the the alphabetically sorted values 'students'
        end
        sorted #returns the sorted hash of arrays
    end

end 
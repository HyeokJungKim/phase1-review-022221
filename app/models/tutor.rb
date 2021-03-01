class Tutor

    attr_accessor :name
    @@all = []

    def initialize(name_arg)
        @name = name_arg
        @@all << self
    end

    def self.all
        @@all
    end

    def courses
        Course.all.select do |course|
            course.tutor == self
        end
    end

    def students
        courses.map do |course|
            course.student
        end
    end

    def tutored_student?(student)
        students.include?(student)
    end


    def list_students
        # students.each do |student|
        #     puts "#{student.name} is being taught by #{self.name}" 
        # end
    
        courses.each do |course|
            puts "#{course.student.name} is being taught by #{self.name} in #{course.course_name}" 
        end
    end

end
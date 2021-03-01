class Course

    attr_reader :student, :tutor, :course_name
    @@all = []

    def initialize(student, tutor, course_name)
        @student = student
        @tutor = tutor
        @course_name = course_name
        @@all << self
    end

    def self.all
        @@all
    end

end
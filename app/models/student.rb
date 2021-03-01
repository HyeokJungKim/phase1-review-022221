class Student

    attr_accessor :name
    @@all = []

    def initialize(name_arg)
        # Instance method
            # Instance variables - Info tied/bound to the instance 
        @name = name_arg
        @@all << self 
        # self is the #<Student @name="Spongebob" @age=10 />
    end

    def self.all
        # self -> Student class
        @@all 
    end

    def courses
        # self -> #<Student @name="Spongebob" @age=10 />

        # Look at all the courses
        # Find all the courses associated with Spongebob
        # Put that in an array and return it

        #select gives you a subarray based on a condition 
            # [<Course>, <Course>] -> [<Course>]
        Course.all.select do |course_inst|
            course_inst.student == self
        end
    end


    def tutors
        # Look at only my courses
        # Figure out the tutors associated with that course
        # Put that in an array and return it

        #map transforms an array
            #[<Course>, <Course>] -> [<Tutor>, <Tutor>]
        self.courses.map do |course_inst|
            course_inst.tutor
        end
    end


    def enrolled_fulltime?
        self.courses.size > 2
    end



    
    

    def tutors_name
        self.tutors.map do |tutor|
            tutor.name
        end
    end



end
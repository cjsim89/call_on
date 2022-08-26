class ImportStudents
   attr_reader :students
   def initialize(filepath = "students.txt")
      @students = File.open(filepath).readlines.map(&:chomp)
   end
end
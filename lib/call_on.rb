require "./lib/import"
require "pry"

class CallOn
   attr_reader :called, :students
   def initialize(file = "students.txt")
      @students = ImportStudents.new(file).students.shuffle
      @called = []
   end

   def call
      s = @students.pop
      @called << s
      return s
   end
end

c = CallOn.new
binding.pry
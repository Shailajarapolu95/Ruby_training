class Student
   attr_accessor :stud_name, :roll_num, :mark1, :mark2, :mark3
   def initialize(stud_name, roll_num, mark1, mark2, mark3)
      @stud_name = stud_name
      @roll_num = roll_num
      @mark1 = mark1
      @mark2 = mark2
      @mark3 = mark3
   end
   
   def calculate_total()
    @total_marks = @mark1 + @mark2 + @mark3
   end

   def display_details()
    puts "Roll Number : #{@roll_num}"
    puts "Student Name : #{@stud_name}"
    puts "Total Marks : #{@total_marks}"
    puts "Toatl Marks of #{@stud_name} is: #{@total_marks}"
   end
end
puts "Enter Student name..."
stud_name = gets.chomp
puts "Enter Roll number of a student..."
roll_num = gets.chomp
puts "Enter Mark1..."
mark1 = gets.chomp.to_i
puts "Enter Mark2..."
mark2 = gets.chomp.to_i
puts "Enter Mark3..."
mark3 = gets.chomp.to_i

details = Student.new(stud_name, roll_num, mark1, mark2, mark3)
details.calculate_total()
details.display_details()

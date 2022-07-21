class Student
 def set_student_details()
    puts "Enter Student name..."
    @stud_name = gets.chomp
    puts "Enter Roll number of a student..."
    @roll_num = gets.chomp
    puts "Enter Mark1..."
    @mark1 = gets.chomp.to_i
    puts "Enter Mark2..."
    @mark2 = gets.chomp.to_i
    puts "Enter Mark3..."
    @mark3 = gets.chomp.to_i
    @total_marks
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
details = Student.new
details.set_student_details()
details.calculate_total()
details.display_details()

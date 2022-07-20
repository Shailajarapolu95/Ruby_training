Email_pattern= /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$/
Filename_pattern=/[a-zA-Z]([a-zA-Z0-9_]*)(\.txt)/
Phonenumber_pattern=/^\(?[\d]{3}\)?[\s|-]?[\d]{3}-?[\d]{4}$/
puts "Enter Emaild_ID..?"
id=gets.chomp
if(id.match(Email_pattern))
  puts "Email_ID Format is Correct..!!"
else
  puts "Email_ID Format is Incorrect..!!"
end
puts"\n"
puts"Enter File name with .txt extension.."
file_name=gets.chomp
if(file_name.match(Filename_pattern))
  puts "File Format is Correct..!"
else
  puts "File Format is Incorrect..!"
end
puts"\n"
puts"Enter Phone number..."
phn=gets.chomp
if(phn.match(Phonenumber_pattern))
  puts "Format is Correct...!"
else
  puts"Format is incorrect..!"
end

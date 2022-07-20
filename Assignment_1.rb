n=1
while n<=5
 puts ("*" *n).ljust(40)
 n+=1
end
puts
#==========================================
n=1
while n<=5
 puts ("* " *n).rjust(10)
 n+=1
end
puts
#===========================================
n=1
while n<=5
 puts "* " *5
 n+=1
end
puts
#=================USing for loop==============
print" Using For loops..."
print "Enter Number for Rows ", ": "
n = gets.to_i
for i in 0..n
	i.times {print "^"}
	puts
end
#==================================
print "Enter the nuber of rows you want to print", ": "
n= gets.chomp.to_i
for i in 0..n
	i.times {print " "}
	(n-i).times {print "$" }
	(n-i-1).times {print "$"}
	puts
end
#=====================================
print "Enter the number of rows:"
n = gets.chomp.to_i
for j in 1..n
	  (n+j).times {print " "}
	  j.times {print "*"}
	  (n-1).times {print "*" }
    (n-j).times {print "*"}
	puts
end
#=========================================
puts "Enter n value"
n=gets.to_i
for i in 1..n
  if i==1 || i==n
    puts "*"*n
  else
    puts "@"*n
end
end
#=========================================
print "Enter Number for Rows", ": "
n = gets.chomp.to_i
for j in 0..n
	(n-j).times {print " "}
	j.times {print "#"}
	(j-1).times {print "#" }
	puts
end
#==========================================

puts "Enter n value"
n=gets.to_i
for i in 1..n
  if i==1 || i==n
    puts "* "*i
  else
    puts "| "*i
end
end
puts
#=========================================

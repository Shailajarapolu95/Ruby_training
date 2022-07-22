class SetOperations
  @@A = [0, 2, 4, 6, 8]
  @@B = [1, 2, 3, 4, 5]

 def union 
  u = @@A | @@B
  print u
  puts"\n"
 end

 def intersection
  i = @@A & @@B
  print i
 end

 def compliment
  c = @@A - @@B  
  print c
  puts "\n"
 end

 def cartesian_product
  product = @@A.product(@@B)
  print product
  puts "\n"
 end

 def cumulative_sum
  array = [1,2,3,4,5]
  sum = 0
  s = array.map{|x| sum += x}
  print s
  puts "\n"
 end

end
demo = SetOperations.new
demo.union
demo.intersection
demo.compliment
demo.cartesian_product
demo.cumulative_sum
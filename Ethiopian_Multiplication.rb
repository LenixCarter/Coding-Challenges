@number_1_set = Array.new
@number_2_set = Array.new
@inc = 0

def ethiopian_mult(num1, num2)
	half_num = num1
	double_num = num2
	puts "#{num1.to_s.chomp}     #{num2.to_s.chomp}"
	solution = num2
	while @number_1_set.last != 1
		half_num = half_num/2
		@number_1_set << half_num
		puts half_num
	end 

	while @number_2_set.length != @number_1_set.length
		double_num =  double_num*2
		@number_2_set << double_num 
		puts "      #{double_num}"
	end

	puts ""

#=begin
	@number_1_set.each do |val|
		print "Index: #{val}"
		if val.even?
			@number_1_set.delete_at(val)
			@number_2_set.delete_at(val)
			print " Even\n"
		else
			print " Odd\n"
		end
	end
#=end	
=begin	
	num_incr = 0

	while true
		print "Index: #{@number_1_set[num_incr]}"
		if @number_1_set[num_incr].even?
			@number_1_set.delete_at(num_incr)
			@number_1_set.delete_at(num_incr)
			print " Even\n"
		else
			print " Odd\n"
		end
		num_incr = num_incr + 1
	end
=end
	puts ""
	puts "      #{num2}"

	@number_1_set.each do |i|
		puts "      #{i}"
		solution = solution + i
	end
	
	puts "\nSolution is #{solution}"

end

ethiopian_mult(16, 7)
# Sorting Function.
# Reads various files (randomly sorted, worst case sorted, mostly sorted) and runs various 
# sorting algorithms.  Shows the # of operations for each. 


unsorted_random = []
unsorted_worst = []
unsorted_almost = []

file_handle = File.open(File.dirname(__FILE__) + "/unsorted_random.txt", "r") or die "Unable to open file"
file_handle.each_line do |line|
	unsorted_random.push(line.to_i)
end

file_handle = File.open(File.dirname(__FILE__) + "/unsorted_worst.txt", "r") or die "Unable to open file"
file_handle.each_line do |line|
	unsorted_worst.push(line.to_i)
end

file_handle = File.open(File.dirname(__FILE__) + "/unsorted_almost.txt", "r") or die "Unable to open file"
file_handle.each_line do |line|
	unsorted_almost.push(line.to_i)
end


# Crude bubble sort.  Still not done, it makes unnecessary comparisons even after the 
# array is sorted.  Sean...fix this so that it stops once it is sorted.
def bubble_sort(numbers)

	for i in 0..(numbers.length - 2)
		
		for j in 0..(numbers.length-2-i)

			# Swap numbers if the second number is greater than the first
				if numbers[j] > numbers[j+1]
					temp = numbers[j+1]
					numbers[j+1] = numbers[j]
					numbers[j] = temp
				end


		end	
	end

	return compare_count, swap_count

end

# Sean........ fill this in with your algorithm.
def sean_sort(numbers)

	counter = 0

	for counter in 1..numbers.length-2
			
			for i in 1...numbers.length

			#if a number is less than the current minimum, number[that number] = new minimum
				if (numbers[i] < numbers[counter-1])
					t = i
					swapYes = true
				
				end
			

			end
			#switches the minimum value with the first non-minimum value
			if (swapYes == true)
				hold = numbers[t]
				numbers[t] = numbers[counter - 1]
				numbers[counter-1] = hold
		
			end
			
	end
	

end

sean_sort(unsorted_random)

puts unsorted_random.join(", ")

sean_sort(unsorted_almost)

puts unsorted_almost.join(", ")

sean_sort(unsorted_worst)

puts unsorted_worst.join(", ")

# Random numbers sorted by bubble
# puts "Original set of numbers in unsorted_random.txt has " + unsorted_random.length.to_s + " numbers."
# puts unsorted_random.join(", ")

# sean_sort(unsorted_random)

# puts "\nSorted set of numbers"
# puts unsorted_random.join(", ")
# puts "Took #{compare_count} compare operations and #{swap_count} swap operations."
# puts "----------------------------------------------------"
# Worst case sort (reversed numbers) sorted by bubble
# puts "Original set of numbers in unsorted_worst.txt has " + unsorted_worst.length.to_s + " numbers."
# puts unsorted_worst.join(", ")

# sean_sort(unsorted_worst)

# puts "\nSorted set of numbers"
# puts unsorted_worst.join(", ")
# puts "Took #{compare_count} compare operations and #{swap_count} swap operations."
# puts "-----------------------------------------------------"
# Mostly sorted list sorted by bubble
# puts "Original set of numbers in unsorted_almost.txt has " + unsorted_almost.length.to_s + " numbers."
# puts unsorted_almost.join(", ")

# sean_sort(unsorted_almost)

# puts "\nSorted set of numbers"
# puts unsorted_almost.join(", ")
# puts "Took #{compare_count} compare operations and #{swap_count} swap operations."
# puts "-----------------------------------------------------"

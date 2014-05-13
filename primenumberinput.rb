puts "Please input what you want to see prime numbers to: "
#listing the primenumbers from 1 to the whatever the input is efficiently
isPrime = 1
top_number = gets.chomp
#variable to count the number of times it divides
counter = 0
#variable to time how long the program runs
beginning = Time.now
while (isPrime <= top_number.to_i)
	x = false
	w = (isPrime - 1)
	y = 2
	found_divisor = false
	
	while ((y <= w) and (found_divisor == false)) #if a divisor is false then dont check it again
		if ((isPrime%y) == 0)
			x = true
			found_divisor = true
		end
		y += 1
		counter += 1	
	end
	
	if (x == false) #if the number found is not divisible
		puts isPrime #print the number
	end
	isPrime = isPrime + 1
end
elapsed = Time.now - beginning #total time elapsed for the program running
puts "The number of times it divides is #{counter} and time elapsed is #{elapsed}" #final product
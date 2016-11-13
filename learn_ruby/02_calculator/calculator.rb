#write your code here
def add(num1, num2)
	sum = num1 + num2
end
def subtract(num1, num2)
	answer = num1 - num2
end
def sum(arr)
	arr.inject(0){|sum, x| sum + x}
end
def multiply(*arr)
	arr.reduce(1, :*)
end
def power(num, exponent)
	answer = num ** exponent
end
def factorial(num)
	if num == 0
		answer = 1
	end
	left = num
	factor = []
	while(left >= 1)
		factor.push(left)
		left -= 1
	end
	factor.reduce(1, :*)
end
#write your code here
def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(numArray)
    #the easiest way is to use the sum method but I want to practice using inject
    numArray.inject(0) { |sum, number| sum + number }
end

def multiply(*nums)
    nums.inject(1) { |product, number| product * number }
end

def power(num, pow)
    num ** pow
end

def factorial(num)
   n = num
   
   if n == 0
       1
   else
      n * factorial(num - 1) 
   end
end
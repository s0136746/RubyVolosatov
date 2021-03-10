
def summ_number(num)
    result = 0
    while num > 0
        a = num % 10 
        result += a
        num /= 10
    end
    result
end
puts ("Print your number: ")
num = gets.chomp.to_i
puts("Result: ")
puts summ_number(num)


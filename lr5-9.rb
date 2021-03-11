
def summ_number(num)
    result = 0
    while num > 0
        a = num % 10 
        result += a
        num /= 10
    end
    return result
end

def composition(num)
    m = 1
    while num>0
        m*=num%10
        num=num/10
    end  
    return m
end

def minimum(num)
    min = num % 10
    num /= 10
    while num > 0
        if min > num % 10
            min = num % 10
        end
        num /= 10
    end
    return min
end

def maximum(num)
    max = num % 10
    num /= 10
    while num > 0
        if max < num % 10
            max = num % 10
        end
        num /= 10
    end
    return max
end

def prost?(n1,n2)
    if n1 > n2
        n1 = n2
        n2 = n1 
    end
    for i in 2..n2 do
        if n1 % i == 0 && n2 % i == 0
            return false
        end
    end
    return true
end




def method_1(num)
    acc = 0
    for i in 1...num
        if prost?(i,num)
            acc += 1
        end
    end
    return acc
end
puts method_1(10)

def method_2(num)
    acc = 0
    for i in..num
        if summ_number(i,num) % 3 ==0
            acc +=1
        end
    end
end

def method_3(num)

end

num = gets.chomp.to_i
puts minimum(num)
num = gets.chomp.to_i
puts maximum(num)
num = gets.chomp.to_i
puts composition(num)



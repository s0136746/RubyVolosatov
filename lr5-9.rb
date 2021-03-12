
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

def prost1(n)
    d = 2 
    while n % d != 0 do
        d += 1 
    end
    return d == n
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
    for i in 2..num
        if prost1(i) && prost1(num)
            acc += 1
        end
    end
    return acc
end

def method_2(num)
    sum = 0
    while(num > 0)
        a = num % 10
        if a % 3 == 0 
            num /= 10
            sum += a
        end
    end
    return sum
end


def method_3(num)
    num1 = num
    kol = 0
    while num > 0 
        kol += 1 
        num /= 10
    end

    for i in 2..num1
        if num1 % i == 0
            if prost1(i) && prost1(kol)
                print "#{i} "
            end
        end
    end
    return 
end

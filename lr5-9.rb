
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

def select_of_methods(method,num)
    case method
    when 'summa'
        return "Сумма ваших цифр числа = " + summ_number(num).to_s
    when 'composition'
        return "Произведение ваших цифр числа =  " + composition(num).to_s
    when 'minimum'
        return "Минимальная цифра вашего числа = " + minimum(num).to_s
    when 'maximum'
        return "Максимальная цифра вашего числа = " + maximum(num).to_s
    when 'method1'
        return "Количество чисел взаимно простых с вашим = " + method_1(num).to_s
    when 'method2'
        return "Сумма цифр вашего числа, делящиеся на 3 = " + method_2(num).to_s
    when 'method3'
        return "Делитель вашего числа, взаимно простой с количеством цифр = " + method_3(num).to_s
    else
            "Такого метода не существует, введите help для вывода доступных методов "
        return "
        summa - сумма цифр вашего числа
        composition - произведение цифр вашего числа
        minimum - минимальная цифра вашего числа
        maximum - максимальная цифра вашего числа
        method1 - количество чисел взаимно простых с вашим
        method2 - сумма цифр вашего числа, делящихся на 3
        method3 - делитель вашего числа, взаимно простой с количеством цифр
        "
    end
end

print 'Введите метод: '
method = gets.chomp
print 'Введите число: '
num = gets.chomp.to_i

puts select_of_methods(method, num)
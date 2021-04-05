print ("Введите элементы списка: ")
myarray = gets.chomp.split
myarray = myarray.map(&:to_i)

def minimum(myarray)
    min = myarray[0]
    for elem in myarray
        if elem < min
            min = elem
        end
    end
    return min 
end

def maximum(myarray)
    max = myarray[0]
    for elem in myarray
        if elem > max
        end
    end
    return max
end

def summa(myarray)
    sum = 0
    for elem in myarray
        sum = sum + elem
    end
    return sum
end

def comp(myarray)
    proizv = 1
    for elem in myarray
        proizv *= elem
    end
    return proizv
end




puts minimum(myarray)
puts maximum(myarray)
puts summa(myarray)
puts comp(myarray)
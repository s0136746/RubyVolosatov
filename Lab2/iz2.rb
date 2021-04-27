def method2(arr)
    min = arr[0] 

    for i in 0..arr.size
        if arr[i] <= min
            min = arr[i]
            index = i
        end
    end
    return index
end


def method14(arr, a, b)
    k = 0
    for i in a..b
        if (arr[i] >= a && arr[i] <= b)
            k += 1
        end
    end
    return k
end

 def method26(arr)
     min1 = arr[0]
     min2 = arr[0]
     k = 0
     for i in 0..arr.size
            if arr[i] <= min
            min = arr[i]
         end
     end

     for i in 0..arr.reverse
        if arr[i] <= min2
            min2 = arr[i]
        end
    end
    return min1,min2
end
         


def method38(arr, a, b)
    k = 0
    k2 = 0
    for i in a..b
        if (arr[i] >= a && arr[i] <= b)
            k += 1
        end
    end
    for i in 0..arr.size
        if arr[i] = k
            k2 += 1
        end
    end
    return k2
end


def method50
end

print ("Введите элементы списка: ")
arr = gets.chomp.split
arr = arr.map(&:to_i)
# puts method26(arr)
# puts method2(arr)
puts 'Необходимо ввести интервал'
		print 'a = '
		a = gets.to_i
		print 'b = '
		b = gets.to_i
puts method38(arr, a, b)
#puts method14(arr, a, b)

#puts method26(arr)
def method2(arr)
    arr.each_with_index.min
end

def method14(a, b, arr)
    return arr[a..b].size
end

def method26()



end

def method38()



end

def method50()



end

print ("Введите элементы списка: ")
arr = gets.chomp.split
arr = arr.map(&:to_i)
# puts method2(arr)
puts 'Необходимо ввести интервал'
		print 'a = '
		a = gets.to_i
		print 'b = '
		b = gets.to_i
puts method14(a, b, arr)
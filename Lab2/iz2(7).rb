def method2(arr)
    arr.each_with_index.min
end

def method14(a, b, arr)
    return arr[a..b].size
end

def method26(arr)

    (arr.rindex(arr.min) - arr.index(arr.min) - 1)

end

def method38()



end

def method50(l1,l2)

    c = (l1 | l2) - (l1 & l2)
    return c

end

print ("Введите элементы списка: ")
arr = gets.chomp.split
arr = arr.map(&:to_i)
# puts method2(arr)
# puts 'Необходимо ввести интервал'
# 		print 'a = '
# 		a = gets.to_i
# 		print 'b = '
# 		b = gets.to_i
puts method26(arr)
# puts method14(a, b, arr)
# print ("Введите элементы 1 списка: ")
# l1 = gets.chomp.split
# l1 = l1.map(&:to_i)
# print ("Введите элементы 2 списка: ")
# l2 = gets.chomp.split
# l2 = l2.map(&:to_i)
# puts method50(l1,l2)
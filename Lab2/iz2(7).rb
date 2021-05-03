def method2(arr)
    arr.each_with_index.min
end

def method14()




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
puts method2(arr)
print ("Введите элементы списка: ")
myarray = gets.chomp.split
myarray = myarray.map(&:to_i)

result = 0

def minimum(myarray)
    return myarray.min
end

def maximum(myarray)
    return myarray.max
end

print ("Сумма элементов массива: ")
puts myarray.inject(0){ |result, elem| result = result + elem }
print ("Произведение элементов массива: ")
puts myarray.inject(1){ |result, elem| result * elem }
print("Минимальный элемент массива: ")
puts minimum(myarray)
print("Максимальный элемент массива: ")
puts maximum(myarray)



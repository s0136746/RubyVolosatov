def method2(arr)
    arr.each_with_index.min
end

def method14(a, b, arr)
    return arr[a..b].size
end

def method26(arr)

    (arr.rindex(arr.min) - arr.index(arr.min) - 1)

end

def method38(arr, a, b)

    arr.select{ |i| (a..b).include?(i) }.size

end

def method50(l1,l2)

    c = (l1 | l2) - (l1 & l2)
    return c

end

mystring = ''

while mystring != '0'
	puts 'Выберите задание:', '2. Дан целочисленный массив. Необходимо найти индекс минимального элемента', '14. Дан целочисленный массив и интервал a..b. Необходимо найти количество элементов в этом интервале.',
    '26. Дан целочисленный массив. Необходимо найти количество элементов между первым и последним минимальным.', '38. Дан целочисленный массив и отрезок a..b. Небходимо найти количество элементов, значение которых принадлежит этому отрезку.', 
    '50. Для двух введенных списков L1 и L2 построить новый список, состоящий из элементов, встречающихся только в одном из этих списков и не повторяющихся в них.',
    '0. Выйти.'

	print 'Ваш ответ: '
	mystring = gets.chomp()
	case mystring
	when '2'
        print ("Введите элементы списка: ")
        arr = gets.chomp.split
        arr = arr.map(&:to_i)
		puts "Решение: "
        puts method2(arr)
	when '14'
        print ("Введите элементы списка: ")
        arr = gets.chomp.split
        arr = arr.map(&:to_i)
        puts '/nНеобходимо ввести интервал'
		print 'a = '
		a = gets.to_i
		print 'b = '
		b = gets.to_i
		puts "/nРешение: "
        puts method14(arr, a, b)
	when '26'
        print ("Введите элементы списка: ")
        arr = gets.chomp.split
        arr = arr.map(&:to_i)        
		puts "Решение: "
        puts method26(arr)
	when '38'
        print ("Введите элементы списка: ")
        arr = gets.chomp.split
        arr = arr.map(&:to_i)        
        puts 'Необходимо ввести интервал'
		print 'a = '
		a = gets.to_i
		print 'b = '
		b = gets.to_i
		puts method38(arr, a, b)
	when '50'
        print ("Введите элементы первого списка: ")
        l1 = gets.chomp.split
        l1 = l1.map(&:to_i)
        print ("Введите элементы второго списка: ")
        l2 = gets.chomp.split
        l2 = l2.map(&:to_i)
        puts method50(l1,l2)
	when '0'
        puts "Выход"
		puts 'Exit'
		
	else
		puts 'Пункт который вы выбрали несуществует'
	end
end
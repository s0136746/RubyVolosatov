def method2(arr)
    min = arr[0] 

    for i in 0...arr.size
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


def min_index(arr)
    min = arr[0]
    index = 0
    for i in 0...arr.size
        if arr[i] < min
            min = arr[i]
            index = i
        end
    end
    index 
end


 def method26(arr)
         return arr.size - min_index(arr.reverse) - min_index(arr) - 2
 end


def method38(arr, a, b)
    acc = 0 

    for i in 0...arr.size
        if arr[i] >= a && arr[i] <= b
            acc += 1
        end
    end
    return acc
end



def method50(l1,l2)
    mas = []
    for i in l1
        prov = true
        for j in l2
            if i == j
                prov = false
            end
        end
        if prov
            mas.push(i)
        end
    end
    for j in l2
        prov = true
        for i in l1
            if i == j
                prov = false
            end
        end
        if prov
            mas.push(j)
        end
    end
    print mas
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
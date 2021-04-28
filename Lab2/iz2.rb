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



def method50
    
end

print ("Введите элементы списка: ")
arr = gets.chomp.split
arr = arr.map(&:to_i)

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
		puts "Список: "
        print arr
		puts "Решение: "
        puts method2(arr)
	when '14'
		puts "Список: "
        print arr
        puts '/nНеобходимо ввести интервал'
		print 'a = '
		a = gets.to_i
		print 'b = '
		b = gets.to_i
		puts "/nРешение: "
        puts method14(arr, a, b)
	when '26'
		puts "Список: "
        print arr
		puts "Решение: "
        puts method26(arr)
	when '38'
		puts "Список: "
        print arr
        puts 'Необходимо ввести интервал'
		print 'a = '
		a = gets.to_i
		print 'b = '
		b = gets.to_i
		puts method38(arr, a, b)
	when '50'
		
	when '0'
        puts "Выход"
		puts 'Exit'
		
	else
		puts 'Пункт который вы выбрали несуществует'
	end
end
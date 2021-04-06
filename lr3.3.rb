def vvod(element)
    element = element.to_i
    myarray = Array.new

    puts "Введите элементы списка: "
    for el in 1..element
        el = STDIN.gets.chomp
        myarray.append(el)
    end

    return myarray
end

print vvod(ARGV[0])

 def summ_number(num)
        result = 0
        while num > 0
            a = num % 10 
            result += a
            num /= 10
        end
        return result
    end

    def composition(num)
        m = 1
        while num>0
            m*=num%10
            num=num/10
        end  
        return m
    end

    def minimum(num)
    end

    def maximum(num)
    end

    num = gets.chomp.to_i
    puts composition(num)
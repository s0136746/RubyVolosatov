class Details
    attr_accessor :proizv_autozap,:article_autozap,:name_autozap,:price_autozap,:name_postavshik,:telephone_postav
    def initialize(proizv_autozap,article_autozap, name_autozap,name_postavshik, price_autozap,telephone_postav=nil)
        self.proizv_autozap= proizv_autozap
        self.article_autozap= article_autozap
        self.name_autozap= name_autozap
        self.price_autozap= name_postavshik
        self.name_postavshik=price_autozap
        self.telephone_postav=telephone_postav
        
        if self.name_postavshik == " "
            self.telephone_postav=nil
        else
            self.name_postavshik=name_postavshik
            self.telephone_postav=telephone_postav
        end
            
    end
    
    def rus_num
        if (self.telephone_postav[0] == "+" and self.telephone_postav[1] == "7") or self.telephone_postav[0] == "8" 
        return "Телефон РФ"
        end
        return "Телефон не принадлежит РФ"
        end

        def to_s
           return self.proizv_autozap.to_s + " | " + self.article_autozap.to_s + " | " + self.name_autozap.to_s + " | " + self.price_autozap.to_s + " | " + self.name_postavshik.to_s + " | " + self.telephone_postav.to_s
        end

        def check_name_autozap
            if self.name_autozap =~ /^[А-ЯЁ][а-яё]*$/
            return "Русская раскладка"
            end
            return "Ошибка!"
            end

            def check_article_autozap
                if self.article_autozap =~ /^[A-Za-z0-9]+$/
                return "Артикль верен"
                end
                return "Ошибка!"
                end

end


Details1 = Details.new("ООО Групп", "4353dg","Подшипник", 1500, "Адлеров Андрей Александрович", "+79649295072")
Details2 = Details.new("ИП Веселек", 2034543,"Прокладка ДВС", 1300, " ", "+79649295072")
puts Details1
puts 
puts Details2
puts Details1.rus_num()
puts Details1.check_name_autozap()
puts Details1.check_article_autozap()




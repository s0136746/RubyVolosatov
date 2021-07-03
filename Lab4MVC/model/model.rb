require 'mysql2'
require_relative 'order'

class Model

    @instance = new 

    private_class_method :new

    def connect_table(company_name,auto_model,part_model,amount)
        client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "password") ##подключение к моей базе данных

        client.query('USE PartsShop')
        client.query("INSERT INTO Orders (company_name, auto_model, part_model, amount) VALUES ('#{company_name}', '#{auto_model}', '#{part_model}', '#{amount}')")
    end

    def view_orders
        orders =[] ##пустой массив, куда будут выгружаться мои записи с базы данных
        client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "password")

        client.query('USE PartsShop')
        selected = client.query('SELECT * FROM Orders')

        selected.each do |order|
            ##в массив кладем объекты нашего класса(столбцы) и возвращаем это массив.
            orders << Order.new(order['id'].to_i,order['company_name'].to_s,order['auto_model'].to_s,order['part_model'].to_s,order['amount'].to_i)
        end
        orders
    end
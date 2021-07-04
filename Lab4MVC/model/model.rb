require 'mysql2'
require_relative 'order'

class Model

  @instance = new
  @@users = [] ##контроллеры

  private_class_method :new

  class << self
    attr_reader :instance
  end

  def order_part(company_name, auto_model, part_model, amount)
    client = Mysql2::Client.new(
      host: 'localhost',
      username: 'root',
      password: 'password'
    )
    client.query('USE PartsShop')
    ##добавление заявки
    client.query("INSERT INTO Orders (company_name, auto_model, part_model, amount) VALUES ('#{company_name}', '#{auto_model}', '#{part_model}', '#{amount}')")
    update ## обновление 
  end

  def grab_orders
    orders = []
    client = Mysql2::Client.new(
      host: 'localhost',
      username: 'root',
      password: 'password'
    )
    client.query('USE PartsShop')
    records = client.query('SELECT * FROM Orders')
    records.each do |order|
      orders << Order.new(
        order['order_id'].to_i,
        order['company_name'].to_s,
        order['auto_model'].to_s,
        order['part_model'].to_s,
        order['amount'].to_i
      )
    end
    orders
  end

  def add_user(user) ##добавление контроллеров, которые будут использовать модель
    @@users << user
  end

  def update ##обновляет всех пользователей(контроллер)
    @@users.each(&:update)
  end
end

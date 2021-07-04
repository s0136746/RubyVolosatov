require_relative '../view/order_part'

require 'fox16'
include Fox

class Order_part_controller

  def initialize(app, model)
    @app = app
    @view = Order_part.new(@app, self)
    @model = model
  end

  def show
    @view.create
  end

  def order_part(company_name, auto_model, part_model, amount)
    @model.order_part(company_name, auto_model, part_model, amount)
  end

end


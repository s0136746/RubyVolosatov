require_relative '../view/acquire_shipment'

require 'fox16'
include Fox

class Acquire_shipment_controller

  def initialize(app, model)
    @app = app
    @view = Acquire_shipment.new(@app, self) ## передаю приложение(текущий контроллер)
    @model = model
    @model.add_user(self)
  end

  def show
    @view.create
  end

  def grab_orders
    @model.grab_orders
  end

  def update
    @view.update
  end

end

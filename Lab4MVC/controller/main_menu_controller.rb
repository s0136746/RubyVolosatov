require_relative '../view/main_menu'
require_relative 'order_part_controller'
require_relative 'acquire_shipment_controller'
require_relative '../model/model'
# require_relative 'Create_request_controller'
# require_relative 'Show_requests_controller'

require 'fox16'
include Fox

class Main_menu_controller

  def initialize(app, model)
    @app = app
    @view = Main_menu.new(@app, self)
    @model = model
  end

  def show
    @app.create
    @app.run
  end

  def order_part
    Order_part_controller.new(@app, Model.instance).show
  end

  def acquire_shipment
    Acquire_shipment_controller.new(@app, Model.instance).show
  end

end

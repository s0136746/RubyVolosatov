require 'fox16'
include Fox

class Main_menu < FXMainWindow

  def initialize(app, controller)
    @controller = controller
    super(app, 'Главное меню')

    mainframe = FXVerticalFrame.new(self, LAYOUT_SIDE_TOP|FRAME_NONE|LAYOUT_FILL_X|LAYOUT_FILL_Y)

    buttons_frame = FXHorizontalFrame.new(mainframe, :opts => PACK_UNIFORM_WIDTH)

    order_part_button = FXButton.new(buttons_frame, 'Заказать детали')
    order_part_button.connect(SEL_COMMAND) do |sender, selector, data|
      @controller.order_part
    end

    acquire_shipment_button = FXButton.new(buttons_frame, 'Принять поставки')
    acquire_shipment_button.connect(SEL_COMMAND) do |sender, selector, data|
      @controller.acquire_shipment
    end

  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end

end

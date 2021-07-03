require 'fox16'
include Fox

class Order_part < FXMainWindow ##заимствование методов в свой

  def initialize(app, controller)
    @controller = controller
    super(app, 'Заказать деталь')

    mainframe = FXVerticalFrame.new(self, LAYOUT_SIDE_TOP|FRAME_NONE|LAYOUT_FILL_X|LAYOUT_FILL_Y)
    content = FXVerticalFrame.new(mainframe, :padding => 10)

    company_name_frame = FXHorizontalFrame.new(content) 
    company_name_label = FXLabel.new(company_name_frame, 'Фирма') 
    company_name_field = FXTextField.new(company_name_frame, 20) 

    auto_frame = FXHorizontalFrame.new(content) 
    auto_label = FXLabel.new(auto_frame, 'Модель авто') 
    auto_field = FXTextField.new(auto_frame, 20) 

    part_frame = FXHorizontalFrame.new(content)
    part_label = FXLabel.new(part_frame, 'Модель детали')
    part_field = FXTextField.new(part_frame, 20)

    amount_frame = FXHorizontalFrame.new(content)
    amount_label = FXLabel.new(amount_frame, 'Количество:')
    amount_field = FXTextField.new(amount_frame, 20)

    create_request_button = FXButton.new(content, 'Заказать') 
    create_request_button.connect(SEL_COMMAND) do |sender, selector, data|
      @controller.order_part(company_name_field.text, auto_field.text, part_field.text, amount_field.text)
      close
    end
  end

  def create
    super
    show(PLACEMENT_SCREEN)
  end

end


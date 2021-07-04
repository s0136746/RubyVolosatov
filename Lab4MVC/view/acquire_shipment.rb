require 'fox16'
include Fox

class Acquire_shipment < FXMainWindow

  def initialize(app, controller)
    @controller = controller
    super(app, 'Оформленные заявки', :width => 800, :height => 150) ##передача управления в fxmainwindow

    mainframe = FXVerticalFrame.new(self, LAYOUT_SIDE_TOP|FRAME_NONE|LAYOUT_FILL_X|LAYOUT_FILL_Y)

    requests_frame = FXVerticalFrame.new(mainframe) ##создал область подзапроса и создал таблицу
    @requests_table = FXTable.new(requests_frame)
    @requests_table.tableStyle |= TABLE_NO_ROWSELECT|TABLE_NO_COLSELECT
    @requests_table.editable = false
    @requests_table.rowHeaderWidth = 30
    @requests_table.columnHeaderHeight = 30


  end

  def update
    @requests_table.clearItems 
    names = [
      'Номер заявки',
      'Фирма',
      'Модель авто',
      'Модель детали',
      'Количество'
    ]
    records = @controller.grab_orders 
    @requests_table.setTableSize(records.length, 6) 
    @requests_table.visibleColumns = 5 
    @requests_table.visibleRows = records.length 
    (0..names.length - 1).each do |name|
      @requests_table.setColumnText(name, names[name])
    end 
    (0..records.length - 1).each do |record| 
      @requests_table.setItemText(record, 0, records[record].id.to_s)
      @requests_table.setItemText(record, 1, records[record].company_name)
      @requests_table.setItemText(record, 2, records[record].auto_model)
      @requests_table.setItemText(record, 3, records[record].part_model)
      @requests_table.setItemText(record, 4, records[record].amount.to_s)
    end
  end

  def create 
    super
    update 
    show(PLACEMENT_SCREEN) 
  end

end

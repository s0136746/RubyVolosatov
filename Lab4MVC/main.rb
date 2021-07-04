require_relative 'controller/main_menu_controller'
require_relative 'model/model'

require 'fox16'
include Fox

Main_menu_controller.new(FXApp.new, Model.instance).show

class AutobusController < ApplicationController
  
  def index
    @buses = Bus.all
  end

end
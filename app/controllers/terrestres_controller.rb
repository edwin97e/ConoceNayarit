class TerrestresController < ApplicationController

  def index
    @lands = Land.all
  end
end
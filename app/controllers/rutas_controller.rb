class RutasController < ApplicationController
	
	def index
		@routes = Route.all
	end

	def show
		@routes = Route.find(params[:id])
	end	
	
end
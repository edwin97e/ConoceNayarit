class VuelosController < ApplicationController
	def index
		@flights = Flight.all
	end
	
end
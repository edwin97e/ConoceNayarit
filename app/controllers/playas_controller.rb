class PlayasController < ApplicationController
	
	def index
		@beaches = Beach.all
	end

	def show
		@beaches = Beach.find(params[:id])
	end	
	
end
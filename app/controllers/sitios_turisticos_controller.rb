class SitiosTuristicosController < ApplicationController
	
	def index
		@sites = Site.all
	end

	def show
		@sites = Site.find(params[:id])
	end	
	
end
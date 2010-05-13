class TerminarzsController < ApplicationController
	layout "admin"
	before_filter :login_required, :only => [:wszystkie, :dodaj, :edytuj, :usun]
	def wszystkie
		@terminy = Terminarz.all	
	end
	
	def dodaj
	end
	
	def edytuj
		@terminy = Terminarz.find(params[:id])
	end
	
	def usun
		@x = Terminarz.find(params[:id])
		if @x.destroy
			redirect_to(wszystkie_path)
		end
	end
	
end

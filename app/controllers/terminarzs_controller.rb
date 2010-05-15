class TerminarzsController < ApplicationController
	layout "admin"
	before_filter :login_required, :only => [:wszystkie, :dodaj, :edytuj, :destroy]
	def wszystkie
		@termin = Terminarz.all(:order => 'created_at DESC')
	end
	
	def dodaj
		@termin = Terminarz.new(params[:terminarz])
	end
	
	def zapisz
		@termin = Terminarz.new(params[:terminarz])
			if @termin.goscie == @termin.gospodarze 
					redirect_to(dodaj_path)	
			else
					@termin.save
					redirect_to(wszystkie_path)
			end
	end
	
	def edytuj
		@termin = Terminarz.find(params[:id])
		
	end
	
	def update
		@termin = Terminarz.find(params[:id])
		if @termin.update_attributes(params[:terminarz])
		   redirect_to(wszystkie_path)
		else
			redirect_to(:action => 'edytuj' )
		end
	end
	
	def usun
		@termin = Terminarz.find(params[:id])
		@termin.destroy
		redirect_to(wszystkie_path)
	end
	
end

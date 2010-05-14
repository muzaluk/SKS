class TerminarzsController < ApplicationController
	layout "admin"
	before_filter :login_required, :only => [:wszystkie, :dodaj, :edytuj, :destroy]
	def wszystkie
		@termin = Terminarz.all(:order => 'created_at DESC')
	end
	
	def dodaj
		@termin = Terminarz.new(params[:termin])
	end
	
	def zapisz
		Terminarz.create(params[:termin])
		redirect_to(wszystkie_path)
	end
	def edytuj
		@termin = Terminarz.find(params[:id])
	end
	
	def update
		@termin = Terminarz.find(params[:id])
		if @termin.update_attributes(params[:termin])
		   redirect_to(wszystkie_path)
		else
			redirect_to(action => 'edytuj', id => params[id])
		end
	end
	
	def usun
		@termin = Terminarz.find(params[:id])
		@termin.destroy
		redirect_to(wszystkie_path)
	end
	
end

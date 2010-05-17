class TerminarzsController < ApplicationController
	layout "admin"
	before_filter :login_required, :only => [:index, :new, :edit, :destroy]
	# GET /terminarzs
	# GET /terminarzs.xml
	def index
		@termin = Terminarz.all(:order => 'created_at DESC')
	end
	
	def new
		@termin = Terminarz.new(params[:terminarz])
	end
	
	def zapisz
		@termin = Terminarz.new(params[:terminarz])
			if @termin.goscie == @termin.gospodarze 
					flash[:notice] = "Goście and Gospodarze must be different!!!"
					redirect_to(dodaj_path)	
			elsif @termin.save
					redirect_to(wszystkie_path)
			else
					redirect_to(dodaj_path)
			end
	end
	
	def edit
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

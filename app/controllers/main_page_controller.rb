class MainPageController < ApplicationController
  def index
    @newsy = News.all(:order => 'created_at DESC')
  end
  
  def oklubie
  end
  
  def zawodnicy
	@players = Player.all
  end
  
  def kontakt
  end 
  
  def calendar
	@terminy = Terminarz.all(:order => 'created_at DESC')
  end
  
  def media
  end
  
  def sklep
  end
end

class MainPageController < ApplicationController
  def index
    @newsy = News.find(:all)
  end
  
  def oklubie
  end
  
  def kontakt
  end 
  
  def calendar
	@terminy = Terminarz.all
  end
  
  def media
  end
  
  def sklep
  end
end

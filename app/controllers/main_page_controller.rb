class MainPageController < ApplicationController
  def index
    @newsy = News.find(:all)
  end
  def oklubie
  end

end

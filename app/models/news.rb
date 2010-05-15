class News < ActiveRecord::Base
		validates_presence_of :dodane, :tytul, :tresc
end

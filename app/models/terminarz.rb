class Terminarz < ActiveRecord::Base
	validates_presence_of :goscie, :gospodarze, :wynik
	validates_format_of  :wynik, :with => /\A\d{1,}:\d\z/ , :message => "Bad format!!"
	validates_length_of  :goscie , :in => 3..30
	validates_length_of  :gospodarze , :in => 3..30
	validates_format_of  :data_spotkania, :with => /\A\d{4}-\d{2}-\d{2}\z/
end

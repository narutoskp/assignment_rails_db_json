class Playlist < ActiveRecord::Base
	
	has_many :enrollsongs
	has_many :songs, through: :enrollsongs
end

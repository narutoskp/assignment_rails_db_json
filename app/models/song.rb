class Song < ActiveRecord::Base

	has_many :enrollsongs
	has_many :playlists, through: :enrollsongs
end

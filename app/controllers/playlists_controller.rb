class PlaylistsController < ApplicationController

	skip_before_action :verify_authenticity_token

	def index #get #select
		render json: Playlist.all
	end

	def create #post
		playlist = Playlist.new(playlist_params)
		if playlist.save
			render json: playlist, status: :created, localtion: playlist
		end
	end

	def update #put
		playlist = Playlist.find(params[:id])

		if playlist.update_attributes(playlist_params)
			render json: playlist, status: 200
		end
		
	end

	def destroy #delete
		playlist = playlist.find(params[:id])

		if playlist.destroy
			head :no_content
		end
		
	end

	private 
		def playlist_params
			params.require(:playlist).permit(:name_playlist)
		end

end

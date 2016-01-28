class EnrollsongsController < ApplicationController

	skip_before_action :verify_authenticity_token

	def index
		render json: Enrollsong.all, :include => [:playlist, :song] 
	end

	def create
		
		#student = Student.find(params[:student_id])
		#course = Course.find(params[:course_id])

		enrollsong = Enrollsong.new(playlist_id: params[:playlist_id], song_id: params[:song_id])
		
		if enrollsong.save
			render json: enrollsong	
		end
	end

	def update #put
		enrollsong = Enrollsong.find(params[:id])

		if enrollsong.update_attributes(playlist_id: params[:playlist_id],
			song_id: params[:song_id])
			render json: enrollsong, status: 200
		end
		
	end

	def destroy #delete
		enrollsong = enrollsong.find(params[:id])

		if enrollsong.destroy
			head :no_content
		end
		
	end

end

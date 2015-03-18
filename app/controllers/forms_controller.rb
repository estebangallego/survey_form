class FormsController < ApplicationController
  def index
  end

  def result
  	@name = params[:name]
  	@location = params[:location]
  	@language = params[:language]
  	@comments = params[:comments]
  	@count = increment_counter
  	@show_message ="Thanks for submiting this form! you a have submited #{@count} times."
   end

   def increment_counter
	  	if session[:counter].nil?
	    	session[:counter] = 0
		end
		  session[:counter] += 1
	end

  	def users_params
		params.require(:name).permit(:location, :language, :comments)	
	end
end

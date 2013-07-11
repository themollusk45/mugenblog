class LinksController < ApplicationController
	def create
		@user = current_user
		@link = @user.links.create(params[:link])
		redirect_to user_path(@user)
	end
end

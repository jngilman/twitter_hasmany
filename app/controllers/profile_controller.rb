class ProfileController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def index
  	@users = User.all
  end

  def feed
  end
end

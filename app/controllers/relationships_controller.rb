class RelationshipsController < ApplicationController

def create
	@relationship = current_user.relationships.new(friends_id: params[:friends_id])



	if @relationship.save
		flash[:notice] = "Successfully Followed"
		redirect_to profile_path(current_user.id)
	else
		flash[:notice] = "Unsuccessful"
		redirect_to root_path
	end
end


def destroy
   @relationship = current_user.relationships.find(params[:id])
   @relationship.destroy
   redirect_to root_path

end




private

def relationship_params
	params.require(:relationship).permit(:user_id, :friend_id)
	
end

end

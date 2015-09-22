class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    redirect_to "/groups/#{params[:id]}"
  end
end

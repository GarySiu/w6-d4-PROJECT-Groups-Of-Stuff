class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def menu
    redirect_to "/groups/#{params[:id]}"
  end

  def show
    @group = Group.find(params[:id])
    @items = Group.find(params[:id]).items.all
  end
end

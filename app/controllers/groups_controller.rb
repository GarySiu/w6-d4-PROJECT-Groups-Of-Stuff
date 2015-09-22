class GroupsController < ApplicationController

  def home
    redirect_to "/groups/"
  end

  def index
    @groups = Group.all
  end

  def menu
    if params[:id] == 'random'
      params[:id] = Group.order("RANDOM()").first.id
    end
      redirect_to "/groups/#{params[:id]}"
  end

  def show
    @group = Group.find(params[:id])
    @items = Group.find(params[:id]).items.all
  end
end

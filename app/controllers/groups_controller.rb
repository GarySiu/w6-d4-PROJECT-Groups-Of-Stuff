class GroupsController < ApplicationController

  def home
    redirect_to '/groups/'
  end

  def index
    @groups = Group.all
  end

  def menu
    if params[:id] == 'random'
      params[:id] = Group.order('RANDOM()').first.id
    end
      redirect_to "/groups/#{params[:id]}"
  end

  def show
    @group = Group.find(params[:id])
    @items = Group.find(params[:id]).items.all
  end

  def new
    @group = Group.new
    @authors = Author.all
  end

  def create
    group = Group.new
    group.update(group_params)
    if group.save
      redirect_to "/groups/#{group.id}"
    else
      render :new
    end
  end

  private

  def group_params
      params.require(:group).permit(:name, :author_id)
  end
end

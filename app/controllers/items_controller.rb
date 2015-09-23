class ItemsController < ApplicationController

  def new
    @group = Group.find(params[:group_id])
    @item = Item.new
    @authors = Author.all
  end

  def create
    # We're creating multiple entries from a single form submit
    # Specifically 1 item for every line of name in params[:item]
    item_object = params[:item]
    # Create a clean array of seperate item names with no linebreaks
    items = item_object[:name].lines.map(&:chomp)
    items.each do |item|
      db = Item.new
      db.update(name: item, group_id: params[:group_id], author_id: item_object[:author_id])
      db.save
    end

    redirect_to "/groups/#{params[:group_id]}"

  end

end

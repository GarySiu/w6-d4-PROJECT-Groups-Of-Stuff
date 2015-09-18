class GroupsController < ApplicationController
  def home
    @groups = Group.all
  end
end

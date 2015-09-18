class Item < ActiveRecord::Base
  belongs_to :group
  belongs_to :author
end

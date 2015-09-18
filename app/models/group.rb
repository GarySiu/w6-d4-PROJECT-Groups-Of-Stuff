class Group < ActiveRecord::Base
  belongs_to :author
  has_many :items
  has_many :GroupTags
  has_many :tags, through: :GroupTags
end

class Group < ActiveRecord::Base
  belongs_to :author
  has_many :items, dependent: :destroy
  has_many :GroupTags, dependent: :destroy
  has_many :tags, through: :GroupTags
end

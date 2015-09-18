class Tag < ActiveRecord::Base
  belongs_to :author
  has_many :GroupTags
  has_many :groups, through: :GroupTags
end

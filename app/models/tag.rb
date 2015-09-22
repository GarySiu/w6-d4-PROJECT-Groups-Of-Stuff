class Tag < ActiveRecord::Base
  belongs_to :author
  has_many :GroupTags, dependent: :destroy
  has_many :groups, through: :GroupTags
end

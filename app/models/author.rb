class Author < ActiveRecord::Base
  has_many :groups
  has_many :tags
  has_many :items
end

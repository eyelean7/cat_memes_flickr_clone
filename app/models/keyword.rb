class Keyword < ApplicationRecord
  has_many :tags
  has_many :images, :through => :tags
end

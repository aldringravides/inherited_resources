class Post < ActiveRecord::Base
  attr_accessible :content, :title, :author_ids
  has_many :authorships
  has_many :authors, through: :authorships
end

class Post < ActiveRecord::Base
  attr_accessible :content, :title, :author_ids, :tag_list
  has_many :authorships
  has_many :authors, through: :authorships
  acts_as_taggable
end

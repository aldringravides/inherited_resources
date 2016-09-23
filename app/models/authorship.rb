class Authorship < ActiveRecord::Base
  attr_accessible :author_id, :post_id
  belongs_to :post
  belongs_to :author
end

class Post < ActiveRecord::Base
  attr_accessible :content, :title
  scope :content, proc { |content| where(:content => content) }
end

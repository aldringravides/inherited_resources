class PostsController < InheritedResources::Base
	has_scope :limit, 
	def index
  		@posts = Post.content("e")
  	end
end


class PostsController < ApplicationController
    def index
        post = Post.all 
        render json: post.to_json
    end

end
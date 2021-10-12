class PostsController < ApplicationController
    def index
        posts = Post.all 
        render json: posts.to_json(:include => { 
            :user => {only: [:username]}
        })
    end



    private
    def post_params
        params.require(:posts).permit(:content, :user_id)
    end


end
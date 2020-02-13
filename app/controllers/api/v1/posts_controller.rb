
    class Api::V1::PostsController < ApplicationController
        # before_action :set_post, only:[:show, :update, :destroy]
        skip_before_action :authorized, only: [:create, :index, :show, :update, :destroy]
    
    
        def index
            @Posts = Post.all
            render json: @Posts
        end 
    
        def show
            render json: @post
        end 
    
        def create
            @post = post.new(post_params)
    
            if @post.save
                render json: @post, status: :create, location: @post
            else 
                render json: @post.erros, status: :unprocessable_entity
            end 
        end 
    
        def update
            if @post.update(post_params)
              render json: @post
            else
              render json: @post.errors, status: :unprocessable_entity
            end
          end
        
          # DELETE /Posts/1
          def destroy
            @post.destroy
          end
        
          private
            # def set_post
            #   @post = post.find(params[:id])
            # end
        
            # Only allow a trusted parameter "white list" through.
            def post_params
              params.require(:post).permit(:title, :description, :status, :project_id, :user_id)
            end
        end
    
    


module Api::V1
  class BlogsController < ApplicationController
    def index
      @blogs = Blog.order("created_at DESC")
      render json: @blogs
    end

    def show
      @blog = Blog.find(params[:id])
      render json: @blog
    end

    def create
      @blog = Blog.create(blog_params)
      @blogs = Blog.order("created_at DESC")
      render json: @blogs
    end

    def update
      @blog = Blog.find(params[:id])
      @blog.update_attributes(blog_params)
      render json: @blog
    end

    def destroy
      @blog = Blog.find(params[:id])
      @blogs = Blog.order("created_at DESC")
      if @blog.destroy
        render json: @blogs
      else
        render json: @blog.errors, status: :unprocessable_entity
      end
    end

    private

      def blog_params
        params.require(:blog).permit(:title, :body)
      end

  end
end
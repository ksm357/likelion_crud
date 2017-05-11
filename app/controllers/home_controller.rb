class HomeController < ApplicationController
  def index
    @everyPost = Post.all.reverse
  end
  
  def write
    
    new_post = Post.new
    new_post.dbName = params[:inputName]
    new_post.dbTitle = params[:inputTitle]
    new_post.dbContent = params[:inputContent]
    new_post.save
      
    redirect_to :back
    
  end
  
  def update_view
    @onePost = Post.find(params[:id])
  end
  
  def update_action
    @onePost = Post.find(params[:id])
    @onePost.dbName = params[:inputName]
    @onePost.dbTitle = params[:inputTitle]
    @onePost.dbContent = params[:inputContent]
    @onePost.save
    
    redirect_to '/'
  end
  
  def destroy_action
    @onePost = Post.find(params[:id])
    @onePost.destroy
    
    redirect_to :back
  end
end

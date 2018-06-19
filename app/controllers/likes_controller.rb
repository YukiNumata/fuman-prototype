class LikesController < ApplicationController
  def create
    @like = Like.create(user_id:cookies.signed[:user_id], fuman_id:params[:id])
    @fuman=Fuman.find(params[:id])
    @fuman.like+=1
    render_to fumans_path
  end
end

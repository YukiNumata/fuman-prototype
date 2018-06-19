class LikesController < ApplicationController
  def create
    @like = Like.create(user_id:cookies.signed[:user_id], fuman_id:params[:id])
    @fuman=Fuman.find(params[:fuman_id])
    @fuman.like+=1
    @fuman.save
    redirect_to fumans_path, :method=>:get
  end
end

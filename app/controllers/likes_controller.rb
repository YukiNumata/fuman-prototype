class LikesController < ApplicationController
  def create
    @user=User.find_by(id:cookies.signed[:user_id])
    unless Like.find_by(user_id:@user.id,fuman_id:params[:fuman_id]).present?
      @like = Like.create(user_id:@user.id,fuman_id:params[:fuman_id])
      @fuman=Fuman.find(params[:fuman_id])
      @fuman.like+=1
      @fuman.save
    end
  redirect_to fumans_path, :method=>:get
  end
end

class DislikesController < ApplicationController
  def create
    @user=User.find_by(id:cookies.signed[:user_id])
    unless Dislike.find_by(user_id:@user.id,fuman_id:params[:fuman_id]).present?
     if Like.find_by(user_id:@user.id,fuman_id:params[:fuman_id]).nil?
      @dislike = Dislike.create(user_id:@user.id,fuman_id:params[:fuman_id])
      @fuman=Fuman.find(params[:fuman_id])
      @fuman.dislike+=1
      @fuman.save
     end
    else
      @dislike = Dislike.find_by(user_id:@user.id,fuman_id:params[:fuman_id])
      @dislike.destroy
      @fuman=Fuman.find(params[:fuman_id])
      @fuman.dislike-=1
      @fuman.save
    end
  redirect_to fumans_path, :method=>:get
  end
end

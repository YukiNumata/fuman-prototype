class FumansController < ApplicationController
  def sort_by_popularity

  end
  def index
    @user=User.find_by(id:cookies.signed[:user_id])
    @like=Like.find_by(user_id:@user)
    if params[:sort_id].to_i==2
     @fumans = Fuman.where(id:@like.fuman_id).order("created_at DESC")
   elsif params[:sort_id].to_i==1
     @fumans = Fuman.all.order(like: :desc)
    else
     @fumans = Fuman.all.order("created_at DESC")
    end
    @fuman=Fuman.new
  end
  def create
    Fuman.create(content:params[:fuman][:content])
    redirect_to :action => 'index'
  end
  def top
    @fuman = Fuman.new
    @user=User.new
    @user.save
    cookies.signed[:user_id] = { :value => @user.id, :expires => 1.day.from_now }
  end
  def like
  end

end

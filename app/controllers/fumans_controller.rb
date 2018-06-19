class FumansController < ApplicationController


  def index
    @user=User.find_by(id:cookies.signed[:user_id])
    @fumans = Fuman.all.order("created_at DESC")
    @fuman=Fuman.new
  end
  def create
    Fuman.create(content:params[:fuman][:content])
    redirect_to :action => 'index'
  end
  def top
    @fuman = Fuman.new
    @user=User.new
    cookies.signed[:user_id] = { :value => @user.id, :expires => 1.day.from_now }
    @user.save
  end
  def like

  end

end

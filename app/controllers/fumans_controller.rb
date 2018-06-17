class FumansController < ApplicationController
  def index
    @fuman = Fuman.new
    @fumans = Fuman.all.order("created_at DESC")
  end
  def create
    Fuman.create(content:params[:fuman][:content])
    redirect_to :action => 'index'
  end
end

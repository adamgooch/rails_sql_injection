class FriendsController < ApplicationController
  def index
    @friends = Friend.find(:all, :order => "name")
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(params[:friend])
    if @friend.save
      flash[:success] = 'Friend Created!'
      redirect_to friends_path
    else
      flash.now[:error] = 'Broken'
      render :new
    end
  end

  def find
    @friends = Friend.search(params[:search])
  end
end

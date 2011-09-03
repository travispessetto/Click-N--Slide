class UsersController < ApplicationController
  
  def new
    @user = User.new(:role=>:subscriber)
  end
  
  def create
    @user = User.new(params[:user])
    respond_to do |format|
      format.html{
        if @user.save
        redirect_to(root_path)
        else
        render :action=>"new"
       end
      }
    end
  end
end

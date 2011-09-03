class UsersController < ApplicationController
  
  def create
    @user = User.new(:role=>:subscriber)
  end
end

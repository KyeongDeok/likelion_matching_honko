class MypageController < ApplicationController
  def index
    @user = User.find(current_user.id)
    unless @user.apply == false
    @appler = Apply.find(@user.apply_id)
    end 
  end
end

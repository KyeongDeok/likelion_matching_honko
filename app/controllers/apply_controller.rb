class ApplyController < ApplicationController
  def apply_create
    @user = User.find(current_user.id)
  end
  def apply_new
    @apply = Apply.new(apply_params)
    @apply.save
    @user = User.find(current_user.id)
    @user.apply = true
    @user.apply_id = @apply.id
		@user.save
      redirect_to '/apply/apply_create'
  end
  
  def apply_cancel
    @user = User.find(current_user.id)
    @user.apply = false
		@user.save
    @apply = Apply.find(params[:id])
    @apply.destroy
      redirect_to '/apply/apply_create'
  end
  private
    def apply_params 
      params.permit(:name,:kakaoid,:age,:school,:locale,:groups,:user_id)
    end
end

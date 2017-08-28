class MatchController < ApplicationController
  def matching
    @user = User.find(current_user.id)
    @apply = Apply.find(@user.apply_id)
    @matching = Apply.where(["locale = ? and groups = ?", @apply.locale, false] )
    if @matching.size < 4
     redirect_to '/posts/main'
    else
    @selected = @matching.sample(4)
    @selected.each do |s|
      s.group = true
      s.save
    end
    end
  end
end

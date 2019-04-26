class UsersController < ApplicationController
  def show

    @my_true_coping = current_user.copings.where(soon: true)
    @random_my_true_coping = @my_true_coping.order("random()").limit(1)
      if params[:coping_display] == "true"
        respond_to do |format|
          format.js { render :coping }
        end
      else
        @user = User.find(params[:id])
        @chart_dates = current_user.comments
        @chart_data_1 = @chart_dates.group_by_day(:date, series: false).average(:before_point)
        @chart_data_2 = @chart_dates.group_by_day(:date, series: false).average(:after_point)
      end
  end

  def index
  end
end

class CopingsController < ApplicationController

  def index
    @copings = current_user.copings
    @coping = Coping.new
  end

  def create
    @copings = current_user.copings
    @coping = current_user.copings.build(coping_params)

    respond_to do |format|
      if @coping.save
        format.js { render :list }
      else
        unless @coping.coping_repertory.present?
            flash[:success1] = 'コメントが空です'
        end
        flash[:success2] = '投稿できませんでした...'
        format.html { redirect_to copings_path }
      end
    end
  end

  def destroy
    @coping = Coping.find(params[:id])
    @coping.destroy
    respond_to do |format|
      format.html { redirect_to copings_url }
    end
  end

  private

  def coping_params
    params.require(:coping).permit(:coping_repertory, :soon)
  end
end

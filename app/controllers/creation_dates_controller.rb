class CreationDatesController < ApplicationController
  before_action :set_creation_date, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @creation_dates = current_user.creation_dates.order(date: "DESC")
  end

  def show
    @comments = @creation_date.comments
    @comment = @creation_date.comments.build
  end

  def new
    @creation_date = CreationDate.new
  end

  def edit
  end

  def create
    @creation_date = current_user.creation_dates.build(creation_date_params)

    respond_to do |format|
      if @creation_date.save
        format.html { redirect_to @creation_date, notice: '作成しました' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @creation_date.update(creation_date_params)
        Comment.where(creation_date_id: @creation_date.id).update(creation_date_params)
        format.html { redirect_to @creation_date, notice: '編集しました' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @creation_date.destroy
    respond_to do |format|
      format.html { redirect_to creation_dates_url, notice: '削除しました' }
    end
  end

  private
  def set_creation_date
    @creation_date = CreationDate.find(params[:id])
  end

  def creation_date_params
    params.require(:creation_date).permit(:date)
  end
end
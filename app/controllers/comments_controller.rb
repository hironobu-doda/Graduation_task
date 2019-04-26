class CommentsController < ApplicationController
  def create
    @creation_date = CreationDate.find(params[:creation_date_id])
    @comment = @creation_date.comments.build(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to creation_date_path(@creation_date), notice: '投稿できませんでした...' }
      end
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to creation_date_path(@comment.creation_date_id), notice: "編集しました" }
      else
        format.html { redirect_to creation_date_path(@comment.creation_date_id), notice: '編集できませんでした...' }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.js { render :index }
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:creation_date_id, :before_content, :after_content, :before_point, :after_point, :date)
  end
end

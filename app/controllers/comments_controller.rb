class CommentsController < ApplicationController
  def create
    @creation_date = CreationDate.find(params[:creation_date_id])
    @comment = @creation_date.comments.build(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        # flash.discard
        format.js { render :index }
      else
        error_message
        format.html { redirect_to creation_date_path(@creation_date) }
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
        format.html { redirect_to creation_date_path(@comment.creation_date_id) }
      else
        format.html { redirect_to creation_date_path(@comment.creation_date_id) }
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

  def error_message
    if @comment.before_point.present?
      unless @comment.before_point.between?(0, 100)
        flash[:success] = '「現在のストレス度」は0~100の間で入力してください'
      end
    end

    if @comment.after_point.present?
      unless @comment.after_point.between?(0, 100)
        flash[:success2] = '「改善後のストレス度」は0~100の間で入力してください'
      end
    end

    unless @comment.before_point.present? && @comment.after_point.present?
        flash[:success3] = 'ストレス度が空です'
    end

    unless @comment.before_content.present? && @comment.after_content.present?
        flash[:success4] = 'コメントが空です'
    end

    flash[:success5] = '投稿できませんでした...'
  end
end

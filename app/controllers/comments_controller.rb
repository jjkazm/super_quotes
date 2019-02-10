class CommentsController < ApplicationController

  def create
    @quote = Quote.find(params[:quote_id])
    @comment = @quote.comments.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.html do
            flash[:success] = "Comment has been added"
           redirect_to quote_path(@quote)
        end
        format.js
    end
    else
      flash[:danger] = "#{@comment.errors.full_messages.first}"
      redirect_to quote_path(@quote)
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end

class CommentsController < ApplicationController

  def create
    @comment = @quote.comment.new(comment_params)
  end

  def index
    @comment = @quote.comments.order(created_at: :desc)
    if @comment.save
      flash[:success] = "Comment has been added"
      redirect_to quote_path(@quote)
    else
      redirect_to quote_path(@quote)
    end
  end


    private
     def comment_params
       params.require(:comment).permit(:body)
     end

end

class CommentsController < ApplicationController

  def create
    @quote = Quote.find(params[:quote_id])
    @comment = @quote.comments.new(comment_params)
    if @comment.save
      ActionCable.server.broadcast 'comments_channel',
                                   comment: render_opinion(@comment)
    else
      flash[:danger] = "#{@comment.errors.full_messages.first}"
      redirect_to quote_path(@quote)
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

    def render_opinion(comment)
     render(partial: 'comment', locals: { comment: comment })
   end
end

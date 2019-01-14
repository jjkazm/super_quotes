class QuotesController < ApplicationController

  def index
    @quotes = Quote.paginate(page: params[:page], per_page: 7).order(created_at: :desc)
  end

  def new
    @quote = Quote.new
  end

  def show
    @quote = Quote.find(params[:id])
    @comments = @quote.comments.paginate(page: params[:page], per_page: 7).order(created_at: :desc)

  end

  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      flash[:success] = "Quote has been added"
      redirect_to quotes_path
    else
      render 'quotes/new'
    end
  end

  private
    def quote_params
      params.require(:quote).permit(:body, :source, :author)
    end

end

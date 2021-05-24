class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    # ay inst var hyt3rf hena hytb3t automayic ll view
  end


  def show
    @article = Article.find(params[:id])
  end


  def new
    @article = Article.new
  end


  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end

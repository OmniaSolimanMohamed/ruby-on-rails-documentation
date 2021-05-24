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

end

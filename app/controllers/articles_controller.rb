class ArticlesController < ApplicationController

  def new
    @article = Article.new

  end

  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirct_to articles_show(@articles)
  end


  private
  def article_params
    params.require(:article).permit(:title, :description)
  end

end

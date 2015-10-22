class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(params[:article_params])

    @article.save
    redirect_to @article

    def article_params
      params.require(:article).permit(:title, :text)
    end
  end
end

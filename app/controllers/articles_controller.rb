class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  def add
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      flash[:notice] = "Article created successfully"
      redirect_to "/showAll"
    else
      render "new"
    end
  end
  def showAll
    @articles = Article.all
  end
  def showById
    @article = Article.find(params[:id])
  end
  def edit
    @article = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article updated successfully"
      redirect_to "/showAll"
    else
      render "edit"
    end
  end
  def delete
    @article = Article.find(params[:id])
    if @article.destroy
      flash[:notice] = "Article deleted successfully"
      redirect_to "/showAll"
    end
  end
end

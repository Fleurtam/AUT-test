class ArticlesController < ApplicationController
  def index
        @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: params[:title], content: params[:content])

    if @article.save
      flash[:notice] = 'Article was successfully created.'
      redirect_to @article
    else
      render :new
    end
  end

    def show
      @article = Article.find(params[:id])
    end
end

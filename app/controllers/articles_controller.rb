class ArticlesController < ApplicationController
  before_action :article, only: [:show, :edit]
  def index
    @articles = Article.all
  end

  def show
    @article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(create_params)
    @article.save

    redirect_to article_path(@article)
  end

  def edit
    @article
  end

  def update
  end

  def destroy
  end

  private

  def article
    @article = Article.find(params[:id])
  end

  def create_params
    params.require(:article).permit(:title, :content)
  end
end

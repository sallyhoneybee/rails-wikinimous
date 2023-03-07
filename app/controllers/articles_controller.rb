class ArticlesController < ApplicationController
  before_action :article, only: %I[show edit destroy]
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
    @article = Article.create!(article_params)
    # why need a bang?

    redirect_to article_path(@article)
  end

  def edit
    @article
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy

    redirect_to articles_path, status: :see_other
  end

  private

  def article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end

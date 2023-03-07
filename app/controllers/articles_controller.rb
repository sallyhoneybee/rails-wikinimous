class ArticlesController < ApplicationController
  before_action :article
  def index
    @articles = Article.all
  end

  def show
    @article
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def article
    @article = Article.find(params[:id])
  end
end

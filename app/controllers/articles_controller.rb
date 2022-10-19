class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  #Shows a single article, which is found by its ID
  def show 
    @article = Article.find(params[:id])
  end  

  #Creates an Article instance to use in a form inside a view
  def new
    @article = Article.new
  end

  #method used tomake some validations and save the object on the database
  def create
    @article = Article.new(title: "...", body: "...")

    if @article.save
      redirect_to @article
    else  
      render :new, status: :unprocessable_entity
    end
  end
  
end

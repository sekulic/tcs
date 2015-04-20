class ArticlesController < ApplicationController
  include ApplicationHelper
  before_action :set_article, only: [:show, :edit, :update, :destroy]  
  before_action :check_isadmin?, only: [:new, :edit, :update, :create, :destroy] 

  def search_country
    if params.has_key?(:country_id)
      if params[:country_id].empty?
          @articles = Article.all.paginate(page: params[:page], per_page: 6).order('created_at DESC')
          @note = ""        
      else
        @articles = Article.where(country_id: params[:country_id]).paginate(page: params[:page], per_page: 6).order('created_at DESC')
        @country = Country.find(params[:country_id])
        @note = "Articles about #{@country.name}"
        if @articles.empty?
          @articles = Article.all.paginate(page: params[:page], per_page: 6).order('created_at DESC')
          @note = "There are no articles about #{@country.name}, yet. Consider writing one."
        end        
      end
      render action: 'index'
    end
  end  
  def index
    if request.get?
      if params.has_key?(:category_id)
        @articles =Article.where(category_id: params[:category_id]).paginate(page: params[:page], per_page: 6).order('created_at DESC')
        @category = Category.find(params[:category_id])
        @note = ""
        if @articles.empty?
          @artcles = Article.all.paginate(page: params[:page], per_page: 6).order('created_at DESC')
          @note = "There are no articles for this category, yet. Consider writing one."
        end        
      else
        @articles =Article.all.paginate(page: params[:page], per_page: 6).order('created_at DESC')
        @note = ""
      end
    end
    @slider_articles=Article.where(slider: true).order(:updated_at).reverse_order.limit(4)
    @did_articles=Article.all.order(:updated_at).reverse_order.limit(10)
  end

  def show
    @authors_articles=Article.where(author_id: @article.author_id).order(:created_at).reverse_order.limit(6)
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @article.update(article_params)
      redirect_to(@article, notice: 'Article was successfully updated.')
    else
      render :edit
    end
  end
  def destroy
    @article.destroy
    redirect_to root_url, notice: 'Article was successfully destroyed.'
  end

  private
  
    def set_article
      @article = Article.find_by_url(params[:id])
    end  
  
    def article_params
      params.require(:article).permit(:title, :description, :text1, :text2, :text3, :text4, :text5, :text6, :p1desescription, :p2description, :p3description, :p4description, :p5description, :p6description, :title, :photo1, :photo2, :photo3, :photo4, :photo5, :photo6, :country_id, :category_id, :author_id, :slider)
    end   
end

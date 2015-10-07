class ArticlesController < ApplicationController
	  before_action :authenticate_user!, except: [:show, :index]
	def new
	end
	def create
		@article = Article.new( article_params )
		@article.save
		redirect_to @article
	end
	def show
	    @article = Article.friendly.find(params[:id])
	end
	def index
	    @articles = Article.all	
	end
	private
	def article_params
		  params.require(:article).permit(:title,:body,:author,:sdesc,:fimage)
	end
end

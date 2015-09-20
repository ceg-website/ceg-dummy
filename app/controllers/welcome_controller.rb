class WelcomeController < ApplicationController
  def index
	@articles = Article.order(created_at: :desc).limit(8)
	@staffnews = Staffnews.order(created_at: :desc).limit(6)
	@studentnews = Studentnews.order(created_at: :desc).limit(6)
  end
end

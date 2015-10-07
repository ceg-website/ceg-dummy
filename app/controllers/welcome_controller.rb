class WelcomeController < ApplicationController
  def index
	@articles = Article.order(created_at: :desc).limit(6)
	@staffnews = Staffnews.order(created_at: :desc).limit(6)
	@staffnewscount = Staffnews.where(created_at: < Date.today).count
	@studentnewscount = Studentnews.count
	@studentnews = Studentnews.order(created_at: :desc).limit(6)
	@thirukural = Thirukural.order(created_at: :desc).limit(1)
	@quotes = Quote.order(created_at: :desc).limit(1)
  end
end

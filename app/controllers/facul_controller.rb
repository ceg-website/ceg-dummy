class FaculController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index]
	def facul
	end
end

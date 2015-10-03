class StudentnewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_studentnews, only: [:show, :edit, :update, :destroy]

  # GET /studentnews
  # GET /studentnews.json
  def index
    @studentnews = Studentnews.all
  end

  # GET /studentnews/1
  # GET /studentnews/1.json
  def show
  end

  # GET /studentnews/new
  def new
    @studentnews = Studentnews.new
  end

  # GET /studentnews/1/edit
  def edit
  end

  # POST /studentnews
  # POST /studentnews.json
  def create
    @studentnews = Studentnews.new(studentnews_params)

    respond_to do |format|
      if @studentnews.save
        format.html { redirect_to @studentnews, notice: 'Studentnews was successfully created.' }
        format.json { render :show, status: :created, location: @studentnews }
      else
        format.html { render :new }
        format.json { render json: @studentnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentnews/1
  # PATCH/PUT /studentnews/1.json
  def update
    respond_to do |format|
      if @studentnews.update(studentnews_params)
        format.html { redirect_to @studentnews, notice: 'Studentnews was successfully updated.' }
        format.json { render :show, status: :ok, location: @studentnews }
      else
        format.html { render :edit }
        format.json { render json: @studentnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentnews/1
  # DELETE /studentnews/1.json
  def destroy
    @studentnews.destroy
    respond_to do |format|
      format.html { redirect_to studentnews_index_url, notice: 'Studentnews was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentnews
      @studentnews = Studentnews.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studentnews_params
      params.require(:studentnews).permit(:stnews, :stid)
    end
end

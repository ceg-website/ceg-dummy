class StaffnewsController < ApplicationController
  before_action :set_staffnews, only: [:show, :edit, :update, :destroy]

  # GET /staffnews
  # GET /staffnews.json
  def index
    @staffnews = Staffnews.all
  end

  # GET /staffnews/1
  # GET /staffnews/1.json
  def show
  end

  # GET /staffnews/new
  def new
    @staffnews = Staffnews.new
  end

  # GET /staffnews/1/edit
  def edit
  end

  # POST /staffnews
  # POST /staffnews.json
  def create
    @staffnews = Staffnews.new(staffnews_params)

    respond_to do |format|
      if @staffnews.save
        format.html { redirect_to @staffnews, notice: 'Staffnews was successfully created.' }
        format.json { render :show, status: :created, location: @staffnews }
      else
        format.html { render :new }
        format.json { render json: @staffnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staffnews/1
  # PATCH/PUT /staffnews/1.json
  def update
    respond_to do |format|
      if @staffnews.update(staffnews_params)
        format.html { redirect_to @staffnews, notice: 'Staffnews was successfully updated.' }
        format.json { render :show, status: :ok, location: @staffnews }
      else
        format.html { render :edit }
        format.json { render json: @staffnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffnews/1
  # DELETE /staffnews/1.json
  def destroy
    @staffnews.destroy
    respond_to do |format|
      format.html { redirect_to staffnews_index_url, notice: 'Staffnews was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staffnews
      @staffnews = Staffnews.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staffnews_params
      params.require(:staffnews).permit(:stnews, :stid)
    end
end

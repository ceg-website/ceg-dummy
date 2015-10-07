class ThirukuralsController < ApplicationController
    before_action :authenticate_user!, except: [:show, :index]
  before_action :set_thirukural, only: [:show, :edit, :update, :destroy]

  # GET /thirukurals
  # GET /thirukurals.json
  def index
    @thirukurals = Thirukural.all
  end

  # GET /thirukurals/1
  # GET /thirukurals/1.json
  def show
  end

  # GET /thirukurals/new
  def new
    @thirukural = Thirukural.new
  end

  # GET /thirukurals/1/edit
  def edit
  end

  # POST /thirukurals
  # POST /thirukurals.json
  def create
    @thirukural = Thirukural.new(thirukural_params)

    respond_to do |format|
      if @thirukural.save
        format.html { redirect_to @thirukural, notice: 'Thirukural was successfully created.' }
        format.json { render :show, status: :created, location: @thirukural }
      else
        format.html { render :new }
        format.json { render json: @thirukural.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thirukurals/1
  # PATCH/PUT /thirukurals/1.json
  def update
    respond_to do |format|
      if @thirukural.update(thirukural_params)
        format.html { redirect_to @thirukural, notice: 'Thirukural was successfully updated.' }
        format.json { render :show, status: :ok, location: @thirukural }
      else
        format.html { render :edit }
        format.json { render json: @thirukural.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thirukurals/1
  # DELETE /thirukurals/1.json
  def destroy
    @thirukural.destroy
    respond_to do |format|
      format.html { redirect_to thirukurals_url, notice: 'Thirukural was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thirukural
      @thirukural = Thirukural.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thirukural_params
      params.require(:thirukural).permit(:cont)
    end
end

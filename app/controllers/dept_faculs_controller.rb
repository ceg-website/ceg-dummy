class DeptFaculsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_dept_facul, only: [:show, :edit, :update, :destroy]

  # GET /dept_faculs
  # GET /dept_faculs.json
  def index
    @dept_faculs = DeptFacul.all
  end

  # GET /dept_faculs/1
  # GET /dept_faculs/1.json
  def show
  end

  # GET /dept_faculs/new
  def new
    @dept_facul = DeptFacul.new
  end

  # GET /dept_faculs/1/edit
  def edit
  end

  # POST /dept_faculs
  # POST /dept_faculs.json
  def create
    @dept_facul = DeptFacul.new(dept_facul_params)

    respond_to do |format|
      if @dept_facul.save
        format.html { redirect_to @dept_facul, notice: 'Dept facul was successfully created.' }
        format.json { render :show, status: :created, location: @dept_facul }
      else
        format.html { render :new }
        format.json { render json: @dept_facul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dept_faculs/1
  # PATCH/PUT /dept_faculs/1.json
  def update
    respond_to do |format|
      if @dept_facul.update(dept_facul_params)
        format.html { redirect_to @dept_facul, notice: 'Dept facul was successfully updated.' }
        format.json { render :show, status: :ok, location: @dept_facul }
      else
        format.html { render :edit }
        format.json { render json: @dept_facul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dept_faculs/1
  # DELETE /dept_faculs/1.json
  def destroy
    @dept_facul.destroy
    respond_to do |format|
      format.html { redirect_to dept_faculs_url, notice: 'Dept facul was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dept_facul
      @dept_facul = DeptFacul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dept_facul_params
      params.require(:dept_facul).permit(:name)
    end
end

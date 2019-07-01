class MantenciondesviacionsController < ApplicationController
  before_action :set_mantenciondesviacion, only: [:show, :edit, :update, :destroy]

  # GET /mantenciondesviacions
  # GET /mantenciondesviacions.json
  def index
    @mantenciondesviacions = Mantenciondesviacion.all
  end

  # GET /mantenciondesviacions/1
  # GET /mantenciondesviacions/1.json
  def show
  end

  # GET /mantenciondesviacions/new
  def new
    @mantenciondesviacion = Mantenciondesviacion.new
  end

  # GET /mantenciondesviacions/1/edit
  def edit
  end

  # POST /mantenciondesviacions
  # POST /mantenciondesviacions.json
  def create
    @mantenciondesviacion = Mantenciondesviacion.new(mantenciondesviacion_params)

    respond_to do |format|
      if @mantenciondesviacion.save
        format.html { redirect_to @mantenciondesviacion, notice: 'Mantenciondesviacion was successfully created.' }
        format.json { render :show, status: :created, location: @mantenciondesviacion }
      else
        format.html { render :new }
        format.json { render json: @mantenciondesviacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mantenciondesviacions/1
  # PATCH/PUT /mantenciondesviacions/1.json
  def update
    respond_to do |format|
      if @mantenciondesviacion.update(mantenciondesviacion_params)
        format.html { redirect_to @mantenciondesviacion, notice: 'Mantenciondesviacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @mantenciondesviacion }
      else
        format.html { render :edit }
        format.json { render json: @mantenciondesviacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mantenciondesviacions/1
  # DELETE /mantenciondesviacions/1.json
  def destroy
    @mantenciondesviacion.destroy
    respond_to do |format|
      format.html { redirect_to mantenciondesviacions_url, notice: 'Mantenciondesviacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mantenciondesviacion
      @mantenciondesviacion = Mantenciondesviacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mantenciondesviacion_params
      params.require(:mantenciondesviacion).permit(:fecha, :hora_inicio, :hora_termino, :tratamiento, :afecta, :area_id, :sector_id, :equipos_id)
    end
end

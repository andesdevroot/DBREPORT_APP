class OperecionesaverisController < ApplicationController
  before_action :set_operecionesaveri, only: [:show, :edit, :update, :destroy]

  # GET /operecionesaveris
  # GET /operecionesaveris.json
  def index
    @operecionesaveris = Operecionesaveri.all
  end

  # GET /operecionesaveris/1
  # GET /operecionesaveris/1.json
  def show
  end

  # GET /operecionesaveris/new
  def new
    @operecionesaveri = Operecionesaveri.new
  end

  # GET /operecionesaveris/1/edit
  def edit
  end

  # POST /operecionesaveris
  # POST /operecionesaveris.json
  def create
    @operecionesaveri = Operecionesaveri.new(operecionesaveri_params)

    respond_to do |format|
      if @operecionesaveri.save
        format.html { redirect_to @operecionesaveri, notice: 'Operecionesaveri was successfully created.' }
        format.json { render :show, status: :created, location: @operecionesaveri }
      else
        format.html { render :new }
        format.json { render json: @operecionesaveri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operecionesaveris/1
  # PATCH/PUT /operecionesaveris/1.json
  def update
    respond_to do |format|
      if @operecionesaveri.update(operecionesaveri_params)
        format.html { redirect_to @operecionesaveri, notice: 'Operecionesaveri was successfully updated.' }
        format.json { render :show, status: :ok, location: @operecionesaveri }
      else
        format.html { render :edit }
        format.json { render json: @operecionesaveri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operecionesaveris/1
  # DELETE /operecionesaveris/1.json
  def destroy
    @operecionesaveri.destroy
    respond_to do |format|
      format.html { redirect_to operecionesaveris_url, notice: 'Operecionesaveri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operecionesaveri
      @operecionesaveri = Operecionesaveri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operecionesaveri_params
      params.require(:operecionesaveri).permit(:fecha, :hora_averia, :observacion, :condicion, :afecta, :area_id, :sector_id, :equipo_id)
    end
end

class OperadesviaprodusController < ApplicationController
  before_action :set_operadesviaprodu, only: [:show, :edit, :update, :destroy]

  # GET /operadesviaprodus
  # GET /operadesviaprodus.json
  def index
    @operadesviaprodus = Operadesviaprodu.all
  end

  # GET /operadesviaprodus/1
  # GET /operadesviaprodus/1.json
  def show
  end

  # GET /operadesviaprodus/new
  def new
    @operadesviaprodu = Operadesviaprodu.new
  end

  # GET /operadesviaprodus/1/edit
  def edit
  end

  # POST /operadesviaprodus
  # POST /operadesviaprodus.json
  def create
    @operadesviaprodu = Operadesviaprodu.new(operadesviaprodu_params)

    respond_to do |format|
      if @operadesviaprodu.save
        format.html { redirect_to @operadesviaprodu, notice: 'Operadesviaprodu was successfully created.' }
        format.json { render :show, status: :created, location: @operadesviaprodu }
      else
        format.html { render :new }
        format.json { render json: @operadesviaprodu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operadesviaprodus/1
  # PATCH/PUT /operadesviaprodus/1.json
  def update
    respond_to do |format|
      if @operadesviaprodu.update(operadesviaprodu_params)
        format.html { redirect_to @operadesviaprodu, notice: 'Operadesviaprodu was successfully updated.' }
        format.json { render :show, status: :ok, location: @operadesviaprodu }
      else
        format.html { render :edit }
        format.json { render json: @operadesviaprodu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operadesviaprodus/1
  # DELETE /operadesviaprodus/1.json
  def destroy
    @operadesviaprodu.destroy
    respond_to do |format|
      format.html { redirect_to operadesviaprodus_url, notice: 'Operadesviaprodu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operadesviaprodu
      @operadesviaprodu = Operadesviaprodu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operadesviaprodu_params
      params.require(:operadesviaprodu).permit(:fecha, :hora_inicio, :hora_termino, :tratamiento_promedio, :afecta_parcial, :total_proceso, :area_id, :sector_id, :equipo_id)
    end
end

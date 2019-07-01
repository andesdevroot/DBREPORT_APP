class OperacioncontroldetesController < ApplicationController
  before_action :set_operacioncontroldete, only: [:show, :edit, :update, :destroy]

  # GET /operacioncontroldetes
  # GET /operacioncontroldetes.json
  def index
    @operacioncontroldetes = Operacioncontroldete.all
  end

  # GET /operacioncontroldetes/1
  # GET /operacioncontroldetes/1.json
  def show
  end

  # GET /operacioncontroldetes/new
  def new
    @operacioncontroldete = Operacioncontroldete.new
  end

  # GET /operacioncontroldetes/1/edit
  def edit
  end

  # POST /operacioncontroldetes
  # POST /operacioncontroldetes.json
  def create
    @operacioncontroldete = Operacioncontroldete.new(operacioncontroldete_params)

    respond_to do |format|
      if @operacioncontroldete.save
        format.html { redirect_to @operacioncontroldete, notice: 'Operacioncontroldete was successfully created.' }
        format.json { render :show, status: :created, location: @operacioncontroldete }
      else
        format.html { render :new }
        format.json { render json: @operacioncontroldete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operacioncontroldetes/1
  # PATCH/PUT /operacioncontroldetes/1.json
  def update
    respond_to do |format|
      if @operacioncontroldete.update(operacioncontroldete_params)
        format.html { redirect_to @operacioncontroldete, notice: 'Operacioncontroldete was successfully updated.' }
        format.json { render :show, status: :ok, location: @operacioncontroldete }
      else
        format.html { render :edit }
        format.json { render json: @operacioncontroldete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operacioncontroldetes/1
  # DELETE /operacioncontroldetes/1.json
  def destroy
    @operacioncontroldete.destroy
    respond_to do |format|
      format.html { redirect_to operacioncontroldetes_url, notice: 'Operacioncontroldete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operacioncontroldete
      @operacioncontroldete = Operacioncontroldete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operacioncontroldete_params
      params.require(:operacioncontroldete).permit(:fecha, :hora_inicio, :hora_final, :especialidad, :observacion, :area_id, :sector_id, :equipo_id)
    end
end

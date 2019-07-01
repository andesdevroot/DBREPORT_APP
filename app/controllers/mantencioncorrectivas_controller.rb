class MantencioncorrectivasController < ApplicationController
  before_action :set_mantencioncorrectiva, only: [:show, :edit, :update, :destroy]

  # GET /mantencioncorrectivas
  # GET /mantencioncorrectivas.json
  def index
    @mantencioncorrectivas = Mantencioncorrectiva.all
  end

  # GET /mantencioncorrectivas/1
  # GET /mantencioncorrectivas/1.json
  def show
  end

  # GET /mantencioncorrectivas/new
  def new
    @mantencioncorrectiva = Mantencioncorrectiva.new
  end

  # GET /mantencioncorrectivas/1/edit
  def edit
  end

  # POST /mantencioncorrectivas
  # POST /mantencioncorrectivas.json
  def create
    @mantencioncorrectiva = Mantencioncorrectiva.new(mantencioncorrectiva_params)

    respond_to do |format|
      if @mantencioncorrectiva.save
        format.html { redirect_to @mantencioncorrectiva, notice: 'Mantencioncorrectiva was successfully created.' }
        format.json { render :show, status: :created, location: @mantencioncorrectiva }
      else
        format.html { render :new }
        format.json { render json: @mantencioncorrectiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mantencioncorrectivas/1
  # PATCH/PUT /mantencioncorrectivas/1.json
  def update
    respond_to do |format|
      if @mantencioncorrectiva.update(mantencioncorrectiva_params)
        format.html { redirect_to @mantencioncorrectiva, notice: 'Mantencioncorrectiva was successfully updated.' }
        format.json { render :show, status: :ok, location: @mantencioncorrectiva }
      else
        format.html { render :edit }
        format.json { render json: @mantencioncorrectiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mantencioncorrectivas/1
  # DELETE /mantencioncorrectivas/1.json
  def destroy
    @mantencioncorrectiva.destroy
    respond_to do |format|
      format.html { redirect_to mantencioncorrectivas_url, notice: 'Mantencioncorrectiva was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mantencioncorrectiva
      @mantencioncorrectiva = Mantencioncorrectiva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mantencioncorrectiva_params
      params.require(:mantencioncorrectiva).permit(:fecha, :hora_inicio, :hora_final, :especialidad, :observacion, :area_id, :sector_id, :equipo_id)
    end
end

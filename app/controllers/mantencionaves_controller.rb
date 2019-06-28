class MantencionavesController < ApplicationController
  before_action :set_mantencionafe, only: [:show, :edit, :update, :destroy]

  # GET /mantencionaves
  # GET /mantencionaves.json
  def index
    @mantencionaves = Mantencionave.all
  end

  # GET /mantencionaves/1
  # GET /mantencionaves/1.json
  def show
  end

  # GET /mantencionaves/new
  def new
    @mantencionafe = Mantencionave.new
  end

  # GET /mantencionaves/1/edit
  def edit
  end

  # POST /mantencionaves
  # POST /mantencionaves.json
  def create
    @mantencionafe = Mantencionave.new(mantencionafe_params)

    respond_to do |format|
      if @mantencionafe.save
        format.html { redirect_to @mantencionafe, notice: 'Mantencionave was successfully created.' }
        format.json { render :show, status: :created, location: @mantencionafe }
      else
        format.html { render :new }
        format.json { render json: @mantencionafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mantencionaves/1
  # PATCH/PUT /mantencionaves/1.json
  def update
    respond_to do |format|
      if @mantencionafe.update(mantencionafe_params)
        format.html { redirect_to @mantencionafe, notice: 'Mantencionave was successfully updated.' }
        format.json { render :show, status: :ok, location: @mantencionafe }
      else
        format.html { render :edit }
        format.json { render json: @mantencionafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mantencionaves/1
  # DELETE /mantencionaves/1.json
  def destroy
    @mantencionafe.destroy
    respond_to do |format|
      format.html { redirect_to mantencionaves_url, notice: 'Mantencionave was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mantencionafe
      @mantencionafe = Mantencionave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mantencionafe_params
      params.require(:mantencionafe).permit(:fecha, :hora, :observacion, :condicion, :afecta, :area_id, :sector_id, :equipo_id)
    end
end

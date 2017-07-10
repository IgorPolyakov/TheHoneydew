class InspectorsController < ApplicationController
  before_action :set_inspector, only: %i[show edit update destroy]

  # GET /inspectors
  # GET /inspectors.json
  def index
    @inspectors = Inspector.all
  end

  # GET /inspectors/1
  # GET /inspectors/1.json
  def show; end

  # GET /inspectors/new
  def new
    @inspector = Inspector.new
  end

  # GET /inspectors/1/edit
  def edit; end

  # POST /inspectors
  # POST /inspectors.json
  def create
    @inspector = Inspector.new(inspector_params)

    respond_to do |format|
      if @inspector.save
        format.html { redirect_to @inspector, notice: t(:inspector_created) }
        format.json { render :show, status: :created, location: @inspector }
      else
        format.html { render :new }
        format.json { render json: @inspector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inspectors/1
  # PATCH/PUT /inspectors/1.json
  def update
    respond_to do |format|
      if @inspector.update(inspector_params)
        format.html { redirect_to @inspector, notice: t(:inspector_updated) }
        format.json { render :show, status: :ok, location: @inspector }
      else
        format.html { render :edit }
        format.json { render json: @inspector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inspectors/1
  # DELETE /inspectors/1.json
  def destroy
    @inspector.destroy
    respond_to do |format|
      format.html { redirect_to inspectors_url, notice: t(:inspector_destroyed) }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_inspector
    @inspector = Inspector.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def inspector_params
    params.require(:inspector).permit(:first_name, :last_name, :middle_name, :position)
  end
end

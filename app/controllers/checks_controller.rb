# frozen_string_literal: true

# ChecksController
class ChecksController < ApplicationController
  before_action :set_check, only: %i[show edit update destroy]

  # GET /checks
  # GET /checks.json
  def index
    @search = Check.ransack(params[:q])
    @checks = @search.result(distinct: true)
    @inspectors = Inspector.full_list
  end

  # GET /checks/1
  # GET /checks/1.json
  def show; end

  def new
    @check = Check.new
  end

  # GET /checks/1/edit
  def edit; end

  # POST /checks
  # POST /checks.json
  def create
    @check = Check.new(check_params)

    respond_to do |format|
      if @check.save
        format.html { redirect_to @check, notice: t(:check_created) }
        format.json { render :show, status: :created, location: @check }
      else
        format.html { render :new }
        format.json { render json: @check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checks/1
  # PATCH/PUT /checks/1.json
  def update
    respond_to do |format|
      if @check.update(check_params)
        format.html { redirect_to @check, notice: t(:check_updated) }
        format.json { render :show, status: :ok, location: @check }
      else
        format.html { render :edit }
        format.json { render json: @check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checks/1
  # DELETE /checks/1.json
  def destroy
    @check.destroy
    respond_to do |format|
      format.html { redirect_to checks_url, notice: t(:check_destroyed) }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_check
    @check = Check.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def check_params
    params.require(:check).permit(:title_check, :amount, :checks_number, :check_start, :check_remark_destroy, :check_finish, :inspector_id, :executive, { organization_ids: [] }, { person_ids: [] }, { response_measure_ids: [] }, { reason_ids: [] }, { violation_ids: [] }, { category_ids: [] }, { direction_status_ids: [] }, :direction_author, :direction_where, :case_number, :number_of_volumes, :for_office, :control)
  end
end

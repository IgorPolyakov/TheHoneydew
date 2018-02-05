# frozen_string_literal: true

# ReportsController
class ReportsController < ApplicationController
  before_action :set_report, only: %i[show edit update destroy]

  # GET /reports
  # GET /reports.json
  def index
    @search = Report.ransack(params[:q])
    @reports = @search.result(distinct: true).sorted
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
    @inspectors = @report.inspector.full_name
    @organizations = @report.organization.company_name
  end

  # GET /reports/new
  def new
    @report = Report.new
    @inspectors =  Inspector.all.map { |inspector| ["#{inspector.last_name} #{inspector.first_name} - #{inspector.position}", inspector.id] }
    @organizations = Organization.get_organizations
  end

  # GET /reports/1/edit
  def edit
    @inspectors =  Inspector.get_inspectors
    @organizations = Organization.get_organizations
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: t(:report_created) }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: t(:report_updated) }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: t(:report_destroyed) }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_report
    @report = Report.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def report_params
    params.require(:report).permit(:number, :title_report, :create_report, :deadline, :inspector_id, :organization_id, :executive, {result_ids: []}, {reason_ids: []})
  end
end

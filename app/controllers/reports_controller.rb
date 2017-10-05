# frozen_string_literal: true

# ReportsController
class ReportsController < ApplicationController
  before_action :set_report, only: %i[show edit update destroy]

  before_action :foo

  def foo
    @reason = [t(:the_qa_and_sar_work_plan), t(:gto_commission), t(:zgto_commission), t(:appeal_of_applicant_organization), t(:other)]
    @result = [t(:off_control), t(:move_to_inner_control)]
  end

  # GET /reports
  # GET /reports.json
  def index
    @reports = Report.order('updated_at DESC')
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
    @inspectors = Inspector.find(@report.inspector_id).full_name
    @organizations = Organization.find(@report.organization_id).company_name
  end

  # GET /reports/new
  def new
    @report = Report.new
    @inspectors =  Inspector.all.map { |s| ["#{s.last_name} #{s.first_name} - #{s.position}", s.id] }
    @organizations = Organization.all.map { |s| [s.company_name, s.id] }
  end

  # GET /reports/1/edit
  def edit
    @inspectors =  Inspector.all.map { |s| ["#{s.last_name} #{s.first_name} - #{s.position}", s.id] }
    @organizations = Organization.all.map { |s| [s.company_name, s.id] }
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
    params.require(:report).permit(:number, :title_report, :create_report, :deadline, :inspector_id, :organization_id, :executive, result: [], reason: [])
  end
end

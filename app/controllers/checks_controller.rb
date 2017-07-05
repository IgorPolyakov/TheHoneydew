class ChecksController < ApplicationController
  before_action :set_check, only: %i[show edit update destroy]

  before_action :foo
  def foo
    @reason = [t(:the_qa_and_sar_work_plan), t(:gto_commission), t(:zgto_commission), t(:appeal_of_applicant_organization), t(:other)]
    @category = [t(:performance), t(:preservation_and_use_of_property), t(:state_municipal_services), t(:contract_system), t(:anti_corruption), t(:for_calls_inappropriate_use_of_budgetary_funds), t(:challenging_the_actions_of_officials), t(:others)]
    @violation = [t(:labor_legislation), t(:legislation_on_state_and_municipal_services), t(:legislation_on_the_contract_system), t(:budget_legislation), t(:departmental_legislation), t(:others)]
    @response_measure = [t(:determination_of_contracts), t(:disciplinary_action), t(:repayment_of_funds), t(:procuracy), t(:eogv), t(:control_committee), t(:false_facts), t(:others)]
    @direction_status = [t(:for_information), t(:for_accept), t(:for_removal)]
  end
  # GET /checks
  # GET /checks.json
  def index
    @checks = Check.order("updated_at DESC")
    @inspectors = Inspector.all.map { |s| [s.last_name, s.id] }
  end

  # GET /checks/1
  # GET /checks/1.json
  def show; end

  def new
    @check = Check.new
  end

  # GET /checks/1/edit
  def edit
  end

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
    params.require(:check).permit(:amount, :checks_number, :check_start, :check_remark_destroy, :check_finish, { reason: [] }, { category: [] }, { violation: [] }, { response_measure: [] }, { direction_status: [] }, :direction_author, :direction_where, :case_number, :number_of_volumes, :for_office, :executive, :inspector_id, organization_ids: [], person_ids: [])
  end
end

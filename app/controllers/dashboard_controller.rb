class DashboardController < ApplicationController
  def report
  end
  
  def index
    @check_count = Check.count
    @report_count = Report.count
    @organization_count = Organization.count
    @inspector_count = Inspector.count
  end
end

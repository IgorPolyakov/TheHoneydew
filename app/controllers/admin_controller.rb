# frozen_string_literal: true

class AdminController < ApplicationController
  def index
    @search = User.ransack(params[:q])
    @users = @search.result(distinct: true).sorted

    @search = Person.ransack(params[:q])
    @people = @search.result(distinct: true).sorted

    @search = Organization.ransack(params[:q])
    @organizations = @search.result(distinct: true).sorted

    @search = Inspector.ransack(params[:q])
    @inspectors = @search.result(distinct: true).sorted

    @search = Check.ransack(params[:q])
    @checks = @search.result(distinct: true)

    @search = Report.ransack(params[:q])
    @reports = @search.result(distinct: true).sorted

    authorize @users
  end
end

# frozen_string_literal: true

class UsersController < ApplicationController
  protect_from_forgery
  before_action :set_user, only: %i[show edit update destroy]

  # GET /users
  # GET /users.json
  def index
    @search = User.ransack(params[:q])
    @users = @search.result(distinct: true).sorted
    authorize @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    authorize @user
  end

  # GET /users/new
  def new; end

  # GET /users/1/edit
  def edit
    authorize @user
  end

  # POST /users
  # POST /users.json
  def create; end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: t(:user_updated) }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    authorize(@user, :destroy?)
    respond_to do |format|
      format.html { redirect_back fallback_location: :back, notice: t(:user_destroyed) }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    # params.require(:user).permit(:id, :login, :is_admin, :current_sign_in_at, :last_sign_in_at)
    params.require(:user).permit(:id, :login, :is_admin, :current_sign_in_at, :last_sign_in_at, :latitude_sign_in, :longitude_sign_in)
  end
end

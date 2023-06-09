class UsersController < ApplicationController
  ## before_action :set_user, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1 
  def show
    @user = User.find(params[:id])
  end
  
  def ban
    @user = User.find(params[:id])
    if @user.access_locked?
      @user.unlock_access!
      flash[:notice] = "#{@user.email} was successfully unbanned!"
    else 
      @user.lock_access!
      flash[:alert] = "#{@user.email} was successfully banned!"
    end

    redirect_to users_path
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users 
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user, {})
    end
end

class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def create
    @user = User.create(
      name: params[:name],
      email: params[:email],
      password_digest: params[:password_digest]
    )
    render :show
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      name: params[:name] || @user.name,
      email: params[:email] || @user.email,
      password_digest: params[:password_digest] || @user.password_digest
    )
    render :show
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.delete
    render json: {message: "User deleted succesfully."}
  end

end

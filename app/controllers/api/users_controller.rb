class Api::UsersController < ApplicationController

  def create
    user = User.new(
      email: params[:email],
      first_name: params[:first_name],
      last_name: params[:last_name],
      house_id: params[:house_id],
      points: params[:points],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  def index
    @users = User.all 
    render "index.json.jb"
  end

end

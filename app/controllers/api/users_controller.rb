class Api::UsersController < ApplicationController

  def create
    user = User.new(
      email: params[:email],
      first_name: params[:first_name],
      last_name: params[:last_name],
      home_id: params[:home_id],
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
    if params[:id] == "current"
      @user = current_user
    else
      @user = User.find_by(id: params[:id])
    end
    render "show.json.jb"
  end

  def index
    @users = User.all 
    render "index.json.jb"
  end

end

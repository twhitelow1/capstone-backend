class Api::AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.where(completed: false)

    if params[:completed] == "true"
      @assignments = Assignment.where(completed: true)
    end

    @assignments = @assignments.order(due_date: :asc)

    render "index.json.jb"
  end

  def create
    assignment = Assignment.new(
      chore_id: params[:chore_id],
      user_id: params[:user_id],
      due_date: params[:due_date],
      completed_date: params[:completed_date],
      assigner_id: params[:assigner_id],
    )
    if assignment.save
      render json: { message: "Assignment created successfully" }, status: :created
    else
      render json: { errors: assignment.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @assignment = Assignment.find_by(id: params[:id])
    @assignment.chore_id = params[:chore_id] || @assignment.chore_id
    @assignment.user_id = params[:user_id] || @assignment.user_id
    @assignment.due_date = params[:due_date] || @assignment.due_date
    @assignment.completed_date = params[:completed_date] || @assignment.completed_date
    @assignment.completed = params[:completed] || @assignment.completed
    @assignment.assigner_id = params[:assigner_id] || @assignment.assigner_id
    if @assignment.save
      render json: {message:"Assignment updated successfully"}, status: :created
    else
      render json: {errors: @assignment.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @assignment = Assignment.find_by(id: params[:id])
    render "show.json.jb"
  end

end

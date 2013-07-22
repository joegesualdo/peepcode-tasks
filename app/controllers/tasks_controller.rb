class TasksController < ApplicationController
  respond_to :json

  def index
    @tasks = Task.all
    respond_with @tasks
  end

  def update
  end

  def destroy
  end

  def show
    @task = Task.find(params[:id])
    respond_with @task
  end

  def create
    @task = Task.new(params[:task])

    if @task.save
      render json: @task
    else
      render json: @task.errors
    end
  end

end
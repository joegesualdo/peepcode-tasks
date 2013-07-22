class TasksController < ApplicationController

  def index
    @tasks = Task.all

    respond_to do |format|
      format.html {render json: @tasks}
    end

  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      respond_to do |format|
        format.html {render json: @task}
      end
    else
      respond_to do |format|
        format.html {render json: @tasks.errors}
      end
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task
      @task.destroy()
      render :nothing => true
    end
  end

  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html {render json: @task}
    end

  end

  def create
    @task = Task.new(params[:task])

    if @task.save
      respond_to do |format|
        format.html {render json: @task}
      end
    else
      respond_to do |format|
        format.html {render json: @task.errors}
      end
    end
  end

end
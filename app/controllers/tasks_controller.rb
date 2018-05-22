class TasksController < ApplicationController
  before_action :fetch_task, except: [:index, :new, :create, :show]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    Task.new(params_task)
    redirect_to tasks_path(@tasks)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task.update(params[:task])
    redirect_to tasks_path(@task)
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    # redirect_to tasks_path(@tasks)
  end

  private

  def fetch_task
    @task = Task.find(params[:id])
  end

  def params_task
    params.require(:task).permit(:title, :details)
  end
end

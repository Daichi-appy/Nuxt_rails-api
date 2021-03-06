class Api::V1::TasksController < ApplicationController
  before_action :authenticate_user
  before_action :set_task, only: [:update, :destroy]

  def index
    tasks = Task.where(project_id: params[:project_id])
    render json: tasks 
  end

  def create
    task = Task.new(task_params)
    if task.save
      render json: { status: 'Success', data: task }
    else
      render json: { status: 'Error', data: task.errors }
    end  
  end

  def update
    @task.update(task_params)
  end

  def destroy
    if @task.destroy
      render json: { status: 'Deleted' }
    else
      render json: { status: 'Error'} 
    end
  end

  private

    def task_params
      params.require(:task).permit(:title, :project_id, :period)
    end

    def set_task
      @task = Task.find(params[:id]) 
    end

end

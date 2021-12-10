class Api::V1::TasksController < ApplicationController

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

  def destroy
  end

  private

    def task_params
      params.require(:task).permit(:title, :project_id)
    end

end

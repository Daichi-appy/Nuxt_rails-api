class Api::V1::ProjectsController < ApplicationController
  before_action :authenticate_user
  before_action :set_project, only: [:destroy]

  def index
    # 本来はDBから取得する => current_user.project
    projects = Project.where(user_id: current_user.id)
      # { id: 1, name: 'Rails MyProject01', updatedAt: '2020-04-01T12:00:00+09:00' },
      # { id: 2, name: 'Rails MyProject02', updatedAt: '2020-04-05T12:00:00+09:00' },
      # { id: 3, name: 'Rails MyProject03', updatedAt: '2020-04-03T12:00:00+09:00' },
      # { id: 4, name: 'Rails MyProject04', updatedAt: '2020-04-04T12:00:00+09:00' },
      # { id: 5, name: 'Rails MyProject05', updatedAt: '2020-04-01T12:00:00+09:00' }
      # { "id": 1, "user_id": 1, "name": "基本情報試験!", "period": "2021-11-20T12:00:00.000+09:00", 
      #   "created_at": "2021-11-23T19:47:03.756+09:00", "updated_at": "2021-11-23T19:47:03.756+09:00" }
    
    render json: projects
  end

  def create
    project = Project.new(project_params)
    if project.save
      render json: { status: 'Success', data: project }
    else
      render json: { status: 'Error', data: project.errors}
    end
  end

  def destroy
    if @project.destroy
      render json: { status: 'Deleted' }
    else
      render json: { status: 'Error'} 
    end
  end

  private

    def project_params
      params.require(:project).permit(:name).merge(user_id: current_user.id)
    end

    def set_project
      @project = Project.find(params[:id])
    end

end

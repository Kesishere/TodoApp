class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      # ...
    else
      # ...
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      # ...
    else
      # ...
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(todos_attributes: [:isCompleted])
  end
end

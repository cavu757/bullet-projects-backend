class Api::V1::ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      render json: @project
    else
      render json: {error: 'Not enough info to create project'}
    end
  end

  def show
    @project = Project.find(params[:id])
    render json: @project
  end

  def destroy
    @projects = Project.all
    @project = Project.find(params[:id])
    @project.destroy
    render json: @projects
  end

  def update
    @project = Project.find(params[:id])
    @project.update(name: project_params[:name], description: project_params[:description], deadline: project_params[:deadline])
    render json: @project
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :deadline)
  end

end

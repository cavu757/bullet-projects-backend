class Api::V1::ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects
  end

  def create
    
  end

  def show

  end

  def destroy

  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :deadline)
  end

end

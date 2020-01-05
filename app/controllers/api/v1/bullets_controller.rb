class Api::V1::BulletsController < ApplicationController

  before_action :set_project

  def index
    @bullets = @project.bullets
    render json: @bullets
  end

  def create
    @bullet = @project.bullets.new(bullet_params)
    if @bullet.save
      render json: @bullet
    else
      render json: {error: 'Not enough info to create bullet'}
    end
  end

  def show
    @bullet = Bullet.find(params[:id])
    render json: @bullet
  end

  def destroy
    @bullet = Bullet.find(params[:id])
    @bullet.destroy
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def bullet_params
    params.require(:bullet).permit(:project_id, :content, :category, :priority, :date)
  end

end

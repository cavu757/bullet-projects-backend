class Api::V1::BulletsController < ApplicationController

  before_action :set_project, only: [:index, :create, :show, :destroy]

  def index
    @bullets = @project.bullets
    render json: @bullets
  end

  def create
    @bullet = @project.bullets.new(bullet_params)
    if @bullet.save
      render json: @project
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

  def all_events
    @all_events = Bullet.all.find_all{|bullet| bullet.category == "event"}
    render json: @all_events
  end

  def all_tasks
    @all_tasks = Bullet.all.find_all{|bullet| bullet.category == "task"}
    render json: @all_tasks
  end

  def all_notes
    @all_notes = Bullet.all.find_all{|bullet| bullet.category == "note"}
    render json: @all_notes
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def bullet_params
    params.require(:bullet).permit(:project_id, :content, :category, :priority, :date)
  end

end

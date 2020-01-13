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
      render json: {error: 'Unable to create bullet.  Enter required info to create bullet'}
    end
  end

  def show
    @bullet = Bullet.find(params[:id])
    render json: @bullet
  end

  def destroy
    @bullet = Bullet.find(params[:id])
    @bullet.destroy
    render json: @project
  end

  def update
    @bullet = Bullet.find(params[:id])
    @bullet.update(content: bullet_params[:content], category: bullet_params[:category], complete: bullet_params[:complete], date: bullet_params[:date])
    @project = Project.find(params[:pId])
    render json: @project
  end

  def all_events
    @all_events = Bullet.all.find_all{|bullet| bullet.category == "event" && bullet.date >= Date.today}
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
    params.require(:bullet).permit(:project_id, :content, :category, :complete, :date)
  end

end

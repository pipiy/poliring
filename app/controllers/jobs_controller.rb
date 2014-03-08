class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @jobs = Job.page(params[:page]).per(8)
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params[:job])
    
    if @job.save      
      redirect_to jobs_path
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])

    if @job.update_attributes(params[:job])
      redirect_to jobs_path
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    redirect_to jobs_path
  end
end

class PlansController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @plan = @task.plans.create(plan_params)
    redirect_to task_path(@task)
  end
  
  private
  def plan_params
    params.require(:plan).permit(:time, :description)
  end
end

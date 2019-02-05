class TasksController < ApplicationController

	def index 
		@task = Task.all
	end

	def new
		@task = Task.new
	end

	def create 
		@task = Task.new(task_params)
		if @task.save 
			flash[:notice] = "Added new task"
			redirect_to tasks_path
		else
			render 'new'
		end
	end

	def show 
		@task = Task.find(params[:id])
	end

	def edit 
		@task = Task.find(params[:id])
	end

	def update 
		@task = Task.find(params[:id])
		if @task.update (task_params)
			flash[:notice] = "Edited a task"
			redirect_to tasks_path 
		else
			render 'edit'
		end
	end

	private
		def task_params
			params.require(:task).permit(:content, :deadline, :done, :comment)
		end
end

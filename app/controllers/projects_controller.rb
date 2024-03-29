class ProjectsController < ApplicationController
	def index		
		@projects = Project.all
	end
	
	def new
		@project = Project.new #Project is model
	end

	def create
		@project = Project.new(params[:project])
		@project.save
		flash[:notice] = "Project has been created."
		redirect_to @project
	end
	
	def show
		@project = Project.find(params[:id])
	end
	
	def edit
		@project = Project.find(params[:id])
	end
	
	def update
		@project = Project.find(params[:id])
		@project.update_attributes(params[:project])
		flash[:notice] = "Project has been updated."
		redirect_to @project
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		flash[:notice] = "Project has been deleted."
		redirect_to projects_path
	end
end

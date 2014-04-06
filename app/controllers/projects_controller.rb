class ProjectsController < ApplicationController
	def new
		@project = Project.new
	end
	
	def create
		@project = Project.new(project_params)

		if @project.save
			redirect_to @project
		else
			render 'new'
		end
	end

	def show
		@project = Project.find(params[:id])
	end
	
	def index
		@projects = Project.all
	end
	
	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])

		if @post.update(project_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy

		redirect_to projects_path
	end

	private

	# Strong parameters for object
	def project_params
		params.require(:project).permit(:title, :description)
	end

end

class ProjectsController < ApplicationController
    def index
        @projects = Project.all
    end

    def new
        @project = Project.new
    end

    def show 
        @project = Project.find(params[:id])
    end

    def create
        @project = Project.new
        @project.save
        redirect_to project_path(@project)
      end
end

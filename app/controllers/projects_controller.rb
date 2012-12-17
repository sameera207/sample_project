class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @todos = ProjectTodo.for_project(params[:id])
  end
  
  def update_todo
    @todo =  ProjectTodo.find(params[:project_todo][:id])
    @todo.update_attributes(params[:project_todo])
    respond_to do |format|
      format.js
    end
  end
end

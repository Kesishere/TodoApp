class ControllerController < ApplicationController
  def index
	@project = Project.all
  end

  def update
  end

  def create
	@todo = Todo.create(todo_params)
	
	redirect_to root_path
  end
end

private
	
def todo_params
	params.require(:todo).permit(:text, :project_id)
end

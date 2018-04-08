class TodosController < ApplicationController
  def create
    @todo = Todo.create(todo_params)
    if @todo.save
      redirect_to root_path
    else

    end
  end

  def update
    @todos = Todo.find_by(params.require(:todos).permit(:id))
    @todoo = @todos.update(bool)
    redirect_to root_path
  end

private
  def todo_params
    params.require(:todo).permit(:text, :project_id) # add any other attributes you want
  end

  def bool
    params.require(:todos).permit(:isCompleted)
  end
end


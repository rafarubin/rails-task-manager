class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    #creamos solo instancia vacía
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # lo redirijo al "#show" que es el /:id variable
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    # lo redirijo al "#show" que es el /:id variable
    redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end

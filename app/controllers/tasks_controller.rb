class TasksController < ApplicationController

    def index
        @tasks = Task.all
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
    end

    def create
        task = Task.new(task_params)
        task.save
        redirect_to tasks_path
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
        task = Task.find(params[:id])
        task.update(task_params)
        task.save
        redirect_to task_path(task)
    end

    def destroy
        Task.destroy(params[:id])
        redirect_to tasks_path
    end

    private

    def task_params
        params.permit(:title, :description)
    end
end
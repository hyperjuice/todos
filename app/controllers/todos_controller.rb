class TodosController < ApplicationController
	def index
		@todos = Todo.all
		render :index
	end

	def new
		@todo = Todo.new
		render :new
	end

	def create
		new_todo = params.require(:todo).permit(:description)
		Todo.create(new_todo)
		redirect_to '/todos'
	end
end

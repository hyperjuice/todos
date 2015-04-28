class TodosController < ApplicationController
	def index
		@todos = Todo.all
		render :index
	end

	def new
		render :new
	end
end

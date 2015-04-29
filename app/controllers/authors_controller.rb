class AuthorsController < ApplicationController

	def index
		@authors = Author.all
		render :index
	end

	def new
		@authors = Author.new
        render :new
	end

	def create
		new_author = params.require(:author).permit(:name)
		author = Author.create(new_author)
		puts author.name
		redirect_to "/authors"

	end

	def show
	 id = params[:id]
        @author = Author.find(id)
        render :show
	end

	def edit
		id = params[:id]
        @author = Author.find(id)
        render :edit
	end

	def update
		author_id = params[:id]
        author = Author.find(author_id)

        # get updated data
        updated_attributes = params.require(:author).permit(:name, :description)
        # update the author
        author.update_attributes(updated_attributes)

        #redirect to show
        redirect_to "/authors/#{author_id}"
	end

	def destroy
		id = params[:id]
	    author = Author.find(id)
	    author.destroy
	    redirect_to "/authors"
	end

end

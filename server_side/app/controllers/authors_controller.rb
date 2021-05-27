class AuthorsController < ApplicationController

    def index
        authors = Author.all 
        render json: AuthorSerializer.new(authors)
    end 
end

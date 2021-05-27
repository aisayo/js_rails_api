class AuthorsController < ApplicationController

    def index
        authors = Author.all 
        render json: authors
    end 
end

class AuthorsController < ApplicationController

    def index
        authors = Author.all 
        render json: authors.to_json(only: [:name])
    end 
end

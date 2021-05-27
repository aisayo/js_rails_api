class AuthorsController < ApplicationController

    def index
        authors = Author.all 
        render json: AuthorSerializer.new(authors, {include: [:books]}) # this will be provided as a value to the `included` key in JSON response
        # render json: authors.to_json(include: { books: {only: [:title]}})
    end 
end

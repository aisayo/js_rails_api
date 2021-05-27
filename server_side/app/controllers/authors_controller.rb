class AuthorsController < ApplicationController

    def index
        authors = Author.all 
        render json: AuthorSerializer.new(authors, {include: [:books]}) 
        # render json: authors.to_json(include: { books: {only: [:title]}})
    end 
end

# Hello, Serializers

- Serializers allow us to encapsulate our modifications to our data structures and distribute it to our controller actions much more organized
- There are a few serializers to use: [ActiveModel Serializer](https://github.com/rails-api/active_model_serializers/blob/0-10-stable/docs/general/getting_started.md) and [fast JSON:API](https://github.com/Netflix/fast_jsonapi)

#### ActiveModel Serializer

- Add to Gemfile: `gem 'active_model_serializers'`
- Run `bundle`
- Run `rails g serializer serialized_model`
- Use `attributes` method to determine which attributes are to be returned in the response:
    ```
    class PostSerializer < ActiveModel::Serializer
      attributes :id, :title, :description
    end
    ```
- Controller should look like:
    ```
        def index
            authors = Author.all 
            render json: authors
        end 
    ```
# Rails API Setup 
- [Rails Guides Layouts and Rendering Resource](https://guides.rubyonrails.org/v5.2/layouts_and_rendering.html)

#### Proceed only if you have completed the steps listed in `initial_setup.md`

- We setup a Rails API when we want to pursue an application with maybe our own model/date or if we can not find a 3rd party API that encapsulates data we'd like to use in our app.
- Originally, Rails applications are setup to render HTML
- If you decide to use an existing Rails app, would need to render JSON instead of HTML, however could render both JSON and HTML if prefferred 
- Once Rails API is setup, we can make fetch requests to `GET`, `POST`, `PATCH`, and `DELETE` data from our backend

### Getting Started
- Once you have completed the initial setup, create models and tables. Can use the resource generator to do so: `rails g resource Model attributes`
- A lot of the setup will happen in the controller(s)

#### Render

- Previously we have used `render` to either implicity or explicity render views in our actions
- However, we can use `render` to also produce different formats of our data
- For a Rails backend/JavaScript frontend, we will use `render json:` 
- Example:
    render json: @product



#### This is an example of rendering both HTML and JSON in the controller:
```
    def index 
        @objects = Object.all

        respond_to do |format|
            format.html {render :index}
            format.json {render json: @objects}
        end
    end 
```




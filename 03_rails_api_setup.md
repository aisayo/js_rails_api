# Rails API Setup 
- [Rails Guides Layouts and Rendering Resource](https://guides.rubyonrails.org/v5.2/layouts_and_rendering.html)

#### Proceed only if you have completed the steps listed in `01_initial_setup.md` and `02_cors_config.md`

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
- Example:`render json: @product`
    - This will format the data into JSON which is easily consumed by our application upon requests
    - What is happening 'under the hood' is the `.to_json` is being called implicity on the method
    `render json: @product.to_json`


#### Returning Specific Pieced of Data 

- In certain cases, we might not want to include all the data of an object in the JSON being produced. We can actually specify which attributes to return as JSON. This is done in 2 ways:

- Explicitly returning specific attributes in controllers
    - ```render json: authors.to_json(except: [:created_at, :updated_at])```
    - ```render json: authors.to_json(only: [:name])```



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




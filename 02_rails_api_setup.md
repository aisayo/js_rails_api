# Rails API Setup

#### Proceed only if you have completed the steps listed in `initial_setup.md`

- We setup a Rails API when we want to pursue an application with maybe our own model/date or if we can not find a 3rd party API that encapsulates data we'd like to use in our app.
- Originally, Rails applications are setup to render HTML
- If you decide to use an existing Rails app, would need to render JSON instead of HTML, however could render both JSON and HTML if prefferred 
- Once Rails API is setup, we can make fetch requests to `GET`, `POST`, `PATCH`, and `DELETE` data from our backend






#### This is an example of rendering both HTML and JSON in the controller:
```
    def index 
        @objects = Object.all

        respond_to do |format|
            format.html {render :index}
            format.json {render json: @object(s)}
        end
    end 
```




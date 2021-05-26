# Configuring CORS

- CORS protects our app from responding to just any request
- We can specify in the configurations, which requests we will allow by listing the URL that has permission to send requests to our app


## Setup

- The CORS configuration is in `config/initializers/cors.rb`
- Comment back in lines 8-16
- During the development process, line 10, `origins 'example.com'` can be changed to `origins '*'` so that we have flexibility with the requests being made. Later, if the app is being hosted on Heroku/Netlify/etc. this should be changed to the URL produced once app is hosted
- Once this is commented in, navigate to the `Gemfile` and comment back in line 26.
- Run `bundle`

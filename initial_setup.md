# How to setup a Full Stack application

- There are going to be two directories that we are directly dealing with: `JS Directory` and `Rails Directory`
- We can handle these separate directories in two ways:
    1. We can create 1 folder that houses both the JS and Rails folders. To do this follow these steps:
        - Create a parent directory meant to house both JS and Rails folders: i.e. `mkdir gaming_app`
        - `cd` into this new directory and create a 'client-side' folder (this is where your JS code will be written, you can call the folder anything you'd like but client-side is common)
        - Create `index.html` and populate the document 
        - Before adding the Rails directory, initialize a repository on Github, and connect local project to remote repository 
        - Create a new Rails folder by running `rails new project-name-here --api` if you are anticipating hosting your app to Heroku/Netlify etc, run this command instead `rails new project-name-here --api --database=postgresql`
        - `cd` into the new rails directory and run `rm -rf .git`
        - `cd` back to main directory and commit changes
        - [#f03c15](https://via.placeholder.com/15/f03c15/000000?text=+) WARNING! Moving forward with this model, you have to make sure to be cd'd into the main directory when creating commits. 
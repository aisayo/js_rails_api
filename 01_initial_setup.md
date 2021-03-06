# How to setup a Full Stack application

- There are going to be two directories that we are directly dealing with: `JS Directory` and `Rails Directory`
- We can handle these separate directories in two ways:

### Creating a mono repo
#### We can create 1 folder that houses both the JS and Rails folders. To do this follow these steps:
- Create a parent directory meant to house both JS and Rails folders: i.e. `mkdir gaming_app`
- `cd` into this new directory and create a 'client-side' folder (this is where your JS code will be written, you can call the folder anything you'd like but client-side is common)
- Create `index.html` and populate the document 
- Before adding the Rails directory, initialize a repository on Github, and connect local project to remote repository 
- Create a new Rails folder by running `rails new project-name-here --api` if you are anticipating hosting your app to Heroku/Netlify etc, run this command instead `rails new project-name-here --api --database=postgresql`
- `cd` into the new rails directory and run `rm -rf .git`
- `cd` back to main directory and commit changes
- WARNING! Moving forward with this model, you have to make sure to be cd'd into the main directory when creating commits. 

### Creating two separate folders and repositories for the client-side and server-side applications
#### This is a better way of handling a full stack application as it provides more flexibility with application. Hosting is simpler and if an application is to be used for another project, configuration would be simple as well
- Create a directory for 'client-side' application `mkdir project-name`
- `cd` into new project
- add `index.html` file and create document
- Initialize a repository on Github 
- Commit 'client-side' application 
- Repeat the above steps for 'server-side' application
- Remember to run the following command to create Rails directory:
    - `rails new project-name-here --api` if you are anticipating hosting your app to Heroku/Netlify etc, run this command instead `rails new project-name-here --api --database=postgresql`
- The result will be 2 SEPARATE folders and 2 separate repositories



Next: Once this has been completed, move on to setting up the Rails API
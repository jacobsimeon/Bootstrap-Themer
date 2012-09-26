##Bootstrap Themer (working title)

A simple sinatra app which compiles twitter bootstrap on the fly.
This allows you to make changes to your less and javascript 
files and see them instantly in your browser.

The application serves a sample html document which contains all the most common bootstrap elements 
so you can see how your changes effect the whole bootstrap framework.

##Installation:
Pre-requisites:
 - node.js
 - npm
 - ruby
 - bundler

####Clone the repository

    git clone git@github.com:jacobsimeon/Bootstrap-Themer.git

####Install Dependencies
    rake initialize

This will install all the npm packages and ruby gems that you'll need.  
It also initializes bootstrap as a submodule.

##Usage:
  1. Start the sinatra app with `rake start`
  2. Visit http://localhost:4567 in your browser
  3. Edit files in `bootstrap/less` and `bootstrap/js`
  4. Reload the page in your browser to see your changes
  5. When you're happy with your changes, run `rake buid`
    - this will compile bootstrap.css, bootstrap-responsive.css and bootstrap.js and place them in `./build`

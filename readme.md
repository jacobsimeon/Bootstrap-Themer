##Bootstrap Themer (working title)

A simple sinatra app comprised of a sample html document which compiles 
twitter bootstrap on the fly.
This allows you to make changes to your less and javascript 
files and see the changes instantly in your browser.

The sample html document contains all the most common bootstrap elements 
so you can how your changes effect the whole bootstrap framework.  
Add html files to `/public` with your custom markup for even more detail 
  (new files will be available at http://localhost:4567/my_new_file.html).

##Installation:
Pre-requisites:
 - node.js
 - npm
 - ruby
 - bundler

Clone the repository
`git clone git@github.com:jacobsimeon/Bootstrap-Themer.git themer`
`cd themer`


Run `rake initialize` to get everything set up.
This will install all the npm packages and ruby gems that you'll need.  
It also initializes bootstrap as a submodule.

##Usage:
  1. Start the sinatra app with `rake start`
  2. Visit http://localhost:4567 in your browser
  3. Edit files in `bootstrap/less` and `bootstrap\js`
  4. Reload the page in your browser to see your changes
  5. When you're happy with your changes, run `rake buid`
    - this will compile bootstrap.css, bootstrap-responsive.css and bootstrap.js and place them in `./build`

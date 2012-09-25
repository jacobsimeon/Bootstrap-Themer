task :build do
  if Dir.exists? 'build'
    puts "Clearing build directory"
    FileUtils.rm_rf 'build'
  end

  puts "Creating new build directory"
  `mkdir build`

  #stylesheets
  puts "Compiling bootstrap.less"
  `lessc bootstrap/less/bootstrap.less > build/bootstrap.css`

  puts "Compiling bootstrap-responsive.less"
  `lessc bootstrap/less/responsive.less > build/bootstrap-responsive.css`

  #javascript
  puts "Concatenating javascript plugins"
  files = Dir['bootstrap/js/*.js'].join(' ')
  `rm build/bootstrap.js` if File.exists? 'build/bootstrap.js'
  `cat #{files} | uglifyjs -nc -o build/bootstrap.js`

  puts "Done"
  system "ls build"
end

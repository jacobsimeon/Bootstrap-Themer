require 'fileutils'

desc "copy bootstrap assets into public directory"
task :install do
  FileUtils.mkdir_p 'public/js'
  `cp bootstrap/js/*.js public/js`

  FileUtils.mkdir_p 'public/img'
  FileUtils.cp_r 'bootstrap/img', 'public'
end

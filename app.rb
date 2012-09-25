require 'bundler/setup'
require 'rubygems'
require 'less'
require 'sinatra'

Less.paths << 'bootstrap/less'

get '/' do
  File.read('public/index.html')
end

get '/bootstrap.css' do
  less :bootstrap, views: 'bootstrap/less'
end

get '/bootstrap-responsive.css' do
  #avoid locking up when accessing less files in both actions
  send(:sleep, 0.5)
  less :responsive, views: 'bootstrap/less'
end

get '/js/:script' do |script|
  content_type :js
  File.read(File.join('bootstrap/js/', script))
end

get '/img/:image' do |image|
  content_type File.extname image
  File.read(File.join('bootstrap', 'img', image))
end

require 'bundler/setup'
require 'rubygems'
require 'less'
require 'sinatra'

Less.paths << 'bootstrap/less'

get '/bootstrap.css' do
  less :bootstrap, views: 'bootstrap/less'
end

get '/bootstrap-responsive.css' do
  #avoid locking up when accessing less files in both actions
  send(:sleep, 0.5)
  less :responsive, views: 'bootstrap/less'
end

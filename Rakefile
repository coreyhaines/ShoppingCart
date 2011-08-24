#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

if ENV['LOAD_RAILS'] == '1'
  require File.expand_path('../config/application', __FILE__)

  Shoppingcart::Application.load_tasks
else
  Dir[File.expand_path("../lib/tasks/", __FILE__) + '/*.rake'].each do |file|
    load file
  end
end

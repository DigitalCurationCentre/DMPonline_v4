#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

begin
require 'ci/reporter/rake/rspec'
rescue LoadError
    puts "ignoring ci-reporter for non-test environment"
end
require File.expand_path('../config/application', __FILE__)

DMPonline4::Application.load_tasks

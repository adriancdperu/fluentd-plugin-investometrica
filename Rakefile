#!/usr/bin/env rake
# Rakefile contains executable Ruby code

require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.test_files = FileList['test/**/test_*.rb']
  test.verbose = true
end

task :default => :test

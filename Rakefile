# encoding: utf-8

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "load_path_find"
    s.description = s.summary = "Convenient way to find stuff on the load path."
    s.email = "joshbuddy@gmail.com"
    s.homepage = "http://github.com/joshbuddy/load_path_find"
    s.authors = "Joshua Hull"
    s.files = FileList["[A-Z]*", "{lib,spec,rails}/**/*"]
    s.add_dependency 'callsite', '>=0.0.2'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

require 'spec'
require 'spec/rake/spectask'
task :spec => 'spec:all'
namespace(:spec) do
  Spec::Rake::SpecTask.new(:all) do |t|
    t.spec_opts ||= []
    t.spec_opts << "-rubygems"
    t.spec_opts << "--options" << "spec/spec.opts"
    t.spec_files = FileList['spec/**/*_spec.rb']
  end
end

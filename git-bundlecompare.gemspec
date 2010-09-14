# -*- encoding: utf-8 -*-
require File.expand_path("../lib/git-bundlecompare/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "git-bundlecompare"
  s.version     = Git::Bundlecompare::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Martin Schuerrer']
  s.email       = ['martin@schuerrer.org']
  s.homepage    = "http://github.com/MSch/git-bundlecompare"
  s.summary     = "Open the GitHub compare view for updates in Gemfile.lock"
  s.description = <<-CONTENT
After running bundle update, git-bundlecompare opens the GitHub compare view for each changed git repository.
CONTENT

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "git-bundlecompare"

  s.add_dependency "bundler", ">= 1.0.0"
  s.add_dependency "launchy"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end

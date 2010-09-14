# -*- encoding: utf-8 -*-
require File.expand_path("../lib/bundler-github/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "bundler-github"
  s.version     = Bundler::Github::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Martin Schuerrer']
  s.email       = ['martin@schuerrer.org']
  s.homepage    = "http://github.com/MSch/bundler-github"
  s.summary     = "Open GitHub compare view for a Gemfile.lock diff"
  s.description = "Open GitHub compare view for a Gemfile.lock diff"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "bundler-github"

  s.add_dependency "bundler", ">= 1.0.0"
  s.add_dependency "launchy"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end

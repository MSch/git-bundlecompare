# -*- encoding: utf-8 -*-
require File.expand_path("../lib/git-bundlecompare/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "git-bundlecompare"
  s.version     = Git::Bundlecompare::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Martin Schuerrer']
  s.email       = ['martin@schuerrer.org']
  s.homepage    = "http://github.com/MSch/bundler-github"
  s.summary     = "Open the GitHub compare view for updates in Gemfile.lock"
  s.description = <<-CONTENT
Do you have git repositories as dependencies in your Gemfile? Do you have no idea what exactly changed after running bundle update?

Don't despair, the solution is here!

 $ bundle update
 $ git bundlecompare # Opens the GitHub compare view in your browser
 $ git commit -a
CONTENT

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "bundler-github"

  s.add_dependency "bundler", ">= 1.0.0"
  s.add_dependency "launchy"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end

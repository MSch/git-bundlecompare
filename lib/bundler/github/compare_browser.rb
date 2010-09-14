require 'launchy'

module Bundler
  module Github
    module CompareBrowser
      def self.main
        regexp = /(GIT$\n   remote: .+github.com\/(.+).git$\n-  revision: (.+)$\n\+  revision: (.+)$)/
        diffs = ARGF.read.scan(regexp)
        diffs.each do |diff|
          complete, remote, before, after = diff
          url = "http://github.com/#{remote}/compare/#{before}...#{after}"
          puts url
          Launchy.open(url)
        end
      end
    end
  end
end

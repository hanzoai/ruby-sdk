# frozen_string_literal: true

require_relative "lib/hanzoai/version"

Gem::Specification.new do |s|
  s.name = "hanzoai"
  s.version = Hanzoai::VERSION
  s.summary = "Ruby library to access the Hanzo API"
  s.authors = ["Hanzo"]
  s.email = "dev@hanzo.ai"
  s.files = Dir["lib/**/*.rb", "rbi/**/*.rbi", "sig/**/*.rbs", "manifest.yaml"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://gemdocs.org/gems/hanzoai"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/hanzoai/ruby-sdk"
  s.metadata["rubygems_mfa_required"] = false.to_s
end

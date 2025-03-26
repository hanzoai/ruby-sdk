# frozen_string_literal: true

require_relative "lib/Hanzo-AI/version"

Gem::Specification.new do |s|
  s.name = "Hanzo-AI"
  s.version = HanzoAI::VERSION
  s.summary = "Ruby library to access the Hanzo API"
  s.authors = ["Hanzo"]
  s.email = "dev@hanzo.ai"
  s.files = Dir["lib/**/*.rb", "rbi/**/*.rbi", "sig/**/*.rbs", "manifest.yaml"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://gemdocs.org/gems/Hanzo-AI"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/Hanzo-AI-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
end

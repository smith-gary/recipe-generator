# frozen_string_literal: true

require_relative "lib/what_should_i_eat/version"
require_relative 'lib/what_should_i_eat/printing'

Gem::Specification.new do |spec|
  spec.name          = "what_should_i_eat"
  spec.version       = WhatShouldIEat::VERSION
  spec.authors       = ["Gary S."]
  spec.email         = ["69396671+tacgee@users.noreply.github.com"]

  spec.summary       = "Fetches a recipe from edamame recipe website."
  spec.description   = "Uses http dependency to fetch the recipe from the specific site."
  spec.homepage      = "https://github.com/tacgee/recipe-generator"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/tacgee/recipe-generator"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tacgee/recipe-generator."
  spec.metadata["changelog_uri"] = "https://github.com/tacgee/recipe-generator"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "http"

end

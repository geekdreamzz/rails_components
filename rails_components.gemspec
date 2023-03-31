require_relative "lib/rails_components/version"

Gem::Specification.new do |spec|
  spec.name        = "rails_components"
  spec.version     = RailsComponents::VERSION
  spec.authors     = ["geekdreamzz"]
  spec.email       = ["bunnarith.bao@gmail.com"]
  spec.homepage    = "https://www.dataforgood.institute/open-source/rails_components"
  spec.summary     = "Styled + functional UX within rails partials designed for reuse"
  spec.description = "An easy way to build Tailwind CSS components in rails applications."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/geekdreamzz/rails_components"
  spec.metadata["changelog_uri"] = "https://github.com/geekdreamzz/rails_components/commit/main"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib,public}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4.3"
  spec.add_dependency "tailwindcss-rails", ">= 2.0.25"
  spec.add_dependency 'view_component', '>= 2.0'
end

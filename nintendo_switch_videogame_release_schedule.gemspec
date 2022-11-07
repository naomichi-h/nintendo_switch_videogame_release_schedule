# frozen_string_literal: true

require_relative "lib/nintendo_switch_videogame_release_schedule/version"

Gem::Specification.new do |spec|
  spec.name = "nintendo_switch_videogame_release_schedule"
  spec.version = NintendoSwitchVideogameReleaseSchedule::VERSION
  spec.authors = ["naomichi-h"]
  spec.email = ["naomichi.programming@gmail.com"]

  spec.summary = "It obtains the game release schedule from the official Nintendo website."
  spec.description = "It Provides a schedule of game releases taken from the official Nintendo website. You can get information on release dates, game titles, and game developers."
  spec.homepage = "https://github.com/naomichi-h/nintendo_switch_videogame_release_schedule"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/naomichi-h/nintendo_switch_videogame_release_schedule"
  spec.metadata["changelog_uri"] = "https://github.com/naomichi-h/nintendo_switch_videogame_release_schedule/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

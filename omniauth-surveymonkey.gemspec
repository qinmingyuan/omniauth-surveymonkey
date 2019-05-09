# -*- encoding: utf-8 -*-
# stub: omniauth-surveymonkey 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-surveymonkey".freeze
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jordan McKible".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-08-02"
  s.email = ["jordanm@surveymonkey.com".freeze]
  s.files = [".gitignore".freeze, ".rspec".freeze, ".rubocop.yml".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "lib/omniauth-surveymonkey.rb".freeze, "lib/omniauth-surveymonkey/omniauth-surveymonkey/version.rb".freeze, "lib/omniauth-surveymonkey/omniauth/strategies/surveymonkey.rb".freeze, "omniauth-surveymonkey.gemspec".freeze]
  s.homepage = "https://github.com/techvalidate/omniauth-surveymonkey".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "OmniAuth strategy for the SurveyMonkey developer API".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth-oauth2>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.11"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<omniauth-oauth2>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.11"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<omniauth-oauth2>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.11"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end

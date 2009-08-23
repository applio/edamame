# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{edamame}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip (flip) Kromer"]
  s.date = %q{2009-08-23}
  s.description = %q{

Edamame combines the Beanstalk priority queue with a Tokyo Tyrant database and God monitoring to produce a persistent distributed priority job queue system.

Like beanstalk, it is fast, lightweight, distributed, priority queuing, reliable scheduling; it adds persistence, named jobs and job querying/enumeration.

}
  s.email = %q{flip@infochimps.org}
  s.executables = ["edamame-ps", "empty_all.rb", "stats.rb", "sync.rb", "test_run.rb"]
  s.extra_rdoc_files = [
    "LICENSE.textile",
     "README.textile"
  ]
  s.files = [
    ".gitignore",
     "README.textile",
     "VERSION",
     "app/edamame_san/config.ru",
     "app/edamame_san/config.yml",
     "app/edamame_san/config/.gitignore",
     "app/edamame_san/edamame_san.rb",
     "app/edamame_san/public/favicon.ico",
     "app/edamame_san/public/images/edamame_logo.icns",
     "app/edamame_san/public/images/edamame_logo.ico",
     "app/edamame_san/public/images/edamame_logo.png",
     "app/edamame_san/public/images/edamame_logo_2.icns",
     "app/edamame_san/public/javascripts/application.js",
     "app/edamame_san/public/javascripts/jquery/jquery-ui.js",
     "app/edamame_san/public/javascripts/jquery/jquery.js",
     "app/edamame_san/public/stylesheets/application.css",
     "app/edamame_san/public/stylesheets/layout.css",
     "app/edamame_san/views/layout.haml",
     "app/edamame_san/views/load.haml",
     "app/edamame_san/views/root.haml",
     "bin/edamame-ps",
     "bin/empty_all.rb",
     "bin/stats.rb",
     "bin/sync.rb",
     "bin/test_run.rb",
     "lib/edamame.rb",
     "lib/edamame/job.rb",
     "lib/edamame/queue.rb",
     "lib/edamame/queue/beanstalk.rb",
     "lib/edamame/rescheduled.rb",
     "lib/edamame/scheduling.rb",
     "lib/edamame/store.rb",
     "lib/edamame/store/base.rb",
     "lib/edamame/store/tyrant_store.rb",
     "lib/methods.txt",
     "utils/god/README-god.textile",
     "utils/god/beanstalkd_god.rb",
     "utils/god/edamame.god",
     "utils/god/god-etc-init-dot-d-example",
     "utils/god/god_email.rb",
     "utils/god/god_process.rb",
     "utils/god/god_site_config.rb",
     "utils/god/sinatra_god.rb",
     "utils/god/tyrant_god.rb",
     "utils/simulation/Add Percent Variation.vi",
     "utils/simulation/Harmonic Average.vi",
     "utils/simulation/Rescheduling Simulation.aliases",
     "utils/simulation/Rescheduling Simulation.lvlps",
     "utils/simulation/Rescheduling Simulation.lvproj",
     "utils/simulation/Rescheduling.vi",
     "utils/simulation/Weighted Average.vi"
  ]
  s.homepage = %q{http://github.com/mrflip/edamame}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Beanstalk + Tokyo Tyrant = Edamame, a fast persistent distributed priority job queue.}
  s.test_files = [
    "spec/edamame_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end

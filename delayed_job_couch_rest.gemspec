# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name              = 'delayed_job_couch_rest'
  s.summary           = 'CouchRest backend for delayed_job'
  s.version           = '1.0.1.rc'
  s.authors           = 'Nicholas Ricketts'
  s.date              = Date.today.to_s
  s.email             = 'nightshade427@gmail.com'
  s.extra_rdoc_files  = ["LICENSE", "README.md"]
  s.files             = Dir.glob("{lib,spec}/**/*") + %w[LICENSE README.md]
  s.homepage          = 'http://github.com/nightshade427/delayed_job_couch_rest'
  s.rdoc_options      = ['--charset=UTF-8']
  s.require_paths     = ['lib']
  s.test_files        = Dir.glob('spec/**/*')

  s.add_runtime_dependency      'couchrest_extended_document'
  s.add_runtime_dependency      'delayed_job',  '~> 2.1'
  s.add_development_dependency  'rspec',        '>= 1.2.9'
end


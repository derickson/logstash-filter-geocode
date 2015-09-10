Gem::Specification.new do |s|
  s.name = 'logstash-filter-geocode'
  s.version         = '0.1.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = "Add a geospatial point location to an event based upon looking up a descriptive field in a CSV file "
  s.description = "Add a geospatial point location to an event based upon looking up a descriptive field in a CSV file "
  s.authors = ["derickson"]
#  s.email = 'derickson@elastic.co'
#  s.homepage = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", '>= 1.4.0', '< 2.0.0'
  s.add_development_dependency 'logstash-devutils'
end

require 'rspec/core/rake_task'
require 'rubycritic/rake_task'

RSpec::Core::RakeTask.new(:spec)

Rubycritic::RakeTask.new do |task|
  task.paths = FileList['models/**/*.rb', '*.rb']
end

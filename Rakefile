begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  task :default => :spec
rescue LoadError
  # no rspec available
end

begin
  require 'rubycritic/rake_task'

  RubyCritic::RakeTask.new do |task|
    task.paths = FileList['models/**/*.rb', '*.rb']
  end
rescue LoadError
  # no rubycritic available
end




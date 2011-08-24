unless ENV['LOAD_RAILS'] == '1'
  require 'rspec/core/rake_task'
  namespace :spec do
    desc "run examples that don't need rails loaded and initialized"
    RSpec::Core::RakeTask.new(:no_rails) do |t|
      t.pattern = './spec_no_rails/**/*_spec.rb'
      t.rspec_opts = '-I spec_no_rails'
      t.skip_bundler = true
    end
    desc "New spec task with no bundler"
    RSpec::Core::RakeTask.new(:with_rails) do |t|
      t.skip_bundler = true
    end

    # task :all => ["spec:no_rails", "spec:with_rails"]
  end

end

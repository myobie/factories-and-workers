if ENV['RAILS_ENV'] == 'test'

  require 'factory_builder'
  require 'factory_worker'
  require 'fileutils'

  %w(spec/factories.rb spec/factory_workers.rb test/factories.rb test/factory_workers.rb).each do |file|
    path = File.join(RAILS_ROOT, file)
    require path if File.exists?(path)
  end

end
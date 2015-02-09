require "engine_migration_initializer/version"

# `extend` your engine's engine.rb with this module to 
# have your host app load your engine's migrations
module EngineMigrationInitializer
  initializer :append_migrations do |app|
    case Rails::VERSION::MAJOR
    when 3
      unless app.root.to_s.match root.to_s
        app.config.paths["db/migrate"] += config.paths["db/migrate"].expanded
      end
    else # Tested w/ Rails 4
      begin
        unless app.root.to_s.match root.to_s
          config.paths["db/migrate"].expanded.each do |expanded_path|
            app.config.paths["db/migrate"] << expanded_path
          end
        end
      rescue => e
        raise "EngineMigrationInitializer did not know how to append_migrations for Rails v#{Rails::VERSION::MAJOR}\nError was: #{e.class} #{e.message}"
      end
    end
  end
end

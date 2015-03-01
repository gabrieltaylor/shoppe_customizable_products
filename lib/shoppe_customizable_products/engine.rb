module ShoppeCustomizableProducts
  class Engine < Rails::Engine
    engine_name 'shoppe_customizable_products'
    isolate_namespace ShoppeCustomizableProducts

    config.autoload_paths += %W(#{config.root}/lib)

    # Don't copy migrations to main app rather just include them from the gem
    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end

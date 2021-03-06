module ShoppeCustomizableProducts
  class Engine < Rails::Engine
    isolate_namespace ShoppeCustomizableProducts

    if ShoppeCustomizableProducts.respond_to?(:root)
      config.autoload_paths << File.join(ShoppeCustomizableProducts.root, 'lib')
    end

    # We don't want any automatic generators in the engine.
    config.generators do |g|
      g.orm             :active_record
      g.test_framework  false
      g.stylesheets     false
      g.javascripts     false
      g.helper          false
    end

    config.to_prepare do
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    initializer 'shoppe_customizable_products.initialize' do |app|
      # Load our migrations into the application's db/migrate path
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end

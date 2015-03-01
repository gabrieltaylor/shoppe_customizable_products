module ShoppeCustomizableProducts
  class Engine < Rails::Engine
    engine_name 'shoppe_customizable_products'
    isolate_namespace ShoppeCustomizableProducts

    if Shoppe.respond_to?(:root)
      config.autoload_paths << File.join(Shoppe.root, 'lib')
    end

    # We don't want any automatic generators in the engine.
    config.generators do |g|
      g.orm             :active_record
      g.test_framework  :rspec
      g.stylesheets     false
      g.javascripts     false
      g.helper          false
    end

    config.to_prepare do
      Dir.glob(Rails.root + "app/decorators/**/*_decorator*.rb").each do |c|
        require_dependency(c)
      end
    end

    # Don't copy migrations to main app rather just include them from the gem
    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end

  end
end

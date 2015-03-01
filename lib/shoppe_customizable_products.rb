module ShoppeCustomizableProducts
  class << self
    # @return [String]
    def root
      File.expand_path('../../', __FILE__)
    end
  end
end
# Start your engines.
require "shoppe_customizable_products/engine"

module ShoppeCustomizableProducts
  class << self
    # @return [String]
    def root
      File.expand_path('../../', __FILE__)
    end
  end
end

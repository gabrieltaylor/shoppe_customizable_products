module Shoppe
  Product.class_eval do
    has_many :customization_types
  end
end
